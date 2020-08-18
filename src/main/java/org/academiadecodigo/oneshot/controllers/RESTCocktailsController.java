package org.academiadecodigo.oneshot.controllers;

import org.academiadecodigo.oneshot.command.CocktailDto;
import org.academiadecodigo.oneshot.converter.Converter;
import org.academiadecodigo.oneshot.persistence.model.Cocktail;
import org.academiadecodigo.oneshot.persistence.model.Party;
import org.academiadecodigo.oneshot.services.PartyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/party/cocktails")
public class RESTCocktailsController {

    private PartyService partyService;


    public PartyService getPartyService() {
        return partyService;
    }

    @Autowired
    public void setPartyService(PartyService partyService) {
        this.partyService = partyService;
    }

    @RequestMapping(method = RequestMethod.GET, path = "/{id}")
    public ResponseEntity<List<CocktailDto>> listCustomerAccounts(@PathVariable Integer id) {

            List<Cocktail> cocktails = partyService.listCocktails(id);
            List<CocktailDto> cocktailsDto = new ArrayList<>();

            for (Cocktail cocktail : cocktails) {
                cocktailsDto.add(Converter.cocktailToCocktailDto(cocktail));
            }

            return new ResponseEntity<>(cocktailsDto, HttpStatus.OK);

    }
}
