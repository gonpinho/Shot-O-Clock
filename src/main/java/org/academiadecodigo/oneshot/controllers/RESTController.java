package org.academiadecodigo.oneshot.controllers;

import org.academiadecodigo.oneshot.command.PartyDto;
import org.academiadecodigo.oneshot.converter.Converter;
import org.academiadecodigo.oneshot.persistence.model.Party;
import org.academiadecodigo.oneshot.services.PartyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/party")
public class RESTController {

    private PartyService partyService;


    public PartyService getPartyService() {
        return partyService;
    }

    @Autowired
    public void setPartyService(PartyService partyService) {
        this.partyService = partyService;
    }


    @RequestMapping(method = RequestMethod.GET, path = {"/", ""})
    public ResponseEntity<PartyDto> getRandomSelection() {

        List<PartyDto> partyDtos = Converter.partiesToPartiesDto(partyService.list());
        int random = (Math.random() <= 0.5) ? 0 : 1;

        return new ResponseEntity<>(partyDtos.get(random), HttpStatus.OK);
    }

    @RequestMapping(method = RequestMethod.GET, path = "/{id}")
    public ResponseEntity<PartyDto> showCustomer(@PathVariable Integer id) {

        Party party = partyService.get(id);

        if (party == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        return new ResponseEntity<>(Converter.partyToPartyDto(party), HttpStatus.OK);
    }

}
