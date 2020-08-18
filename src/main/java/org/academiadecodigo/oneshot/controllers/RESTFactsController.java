package org.academiadecodigo.oneshot.controllers;

import org.academiadecodigo.oneshot.command.CocktailDto;
import org.academiadecodigo.oneshot.command.FactDto;
import org.academiadecodigo.oneshot.converter.Converter;
import org.academiadecodigo.oneshot.persistence.model.Fact;
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
@RequestMapping("/api/party/facts")
public class RESTFactsController {

    private PartyService partyService;


    public PartyService getPartyService() {
        return partyService;
    }

    @Autowired
    public void setPartyService(PartyService partyService) {
        this.partyService = partyService;
    }

    @RequestMapping(method = RequestMethod.GET, path = "/{id}")
    public ResponseEntity<List<FactDto>> listFacts(@PathVariable Integer id) {

        List<Fact> factList = partyService.get(id).getFacts();

        if (factList == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        List<FactDto> factDtoList  = new ArrayList<>();
        factDtoList = Converter.factsToFactsDto(factList);

        return new ResponseEntity<>(factDtoList, HttpStatus.OK);
    }
}
