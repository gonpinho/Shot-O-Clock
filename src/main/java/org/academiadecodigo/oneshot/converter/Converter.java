package org.academiadecodigo.oneshot.converter;

import org.academiadecodigo.oneshot.command.CocktailDto;
import org.academiadecodigo.oneshot.command.FactDto;
import org.academiadecodigo.oneshot.command.PartyDto;
import org.academiadecodigo.oneshot.persistence.model.Cocktail;
import org.academiadecodigo.oneshot.persistence.model.Fact;
import org.academiadecodigo.oneshot.persistence.model.Party;


import java.util.ArrayList;
import java.util.List;

public class Converter {

    public static PartyDto partyToPartyDto(Party party) {

        PartyDto partyDto = new PartyDto();

        partyDto.setId(party.getId());
        partyDto.setPlaylistURL(party.getPlaylistURL());
        partyDto.setBackground(party.getBackground());
        partyDto.setFontFamily(party.getFontFamily());
        partyDto.setDescription(party.getDescription());
        partyDto.setPartyName(party.getPartyName());
        partyDto.setGoogleFontURL(party.getGoogleFontURL());
        partyDto.setTheme(party.getTheme());
        partyDto.setLine(party.getLine());
        partyDto.setArrow(party.getArrow());


        return partyDto;
    }

    public static Party partyDtoToParty(PartyDto partyDto) {

        Party party = new Party();

        party.setId(partyDto.getId());
        party.setPlaylistURL(partyDto.getPlaylistURL());
        party.setBackground(partyDto.getBackground());
        party.setDescription(partyDto.getDescription());
        party.setFontFamily(partyDto.getFontFamily());
        party.setPartyName(partyDto.getPartyName());
        party.setGoogleFontURL(partyDto.getGoogleFontURL());
        party.setTheme(partyDto.getTheme());
        party.setLine(partyDto.getLine());
        party.setArrow(partyDto.getArrow());


        return party;
    }

    public static FactDto factToFactDto(Fact fact) {

        FactDto factDto = new FactDto();

        factDto.setFactStr(fact.getFactStr());

        return factDto;
    }

    public static Fact factDtoToFact(FactDto factDto) {

        Fact fact = new Fact();

        fact.setFactStr(factDto.getFactStr());

        return fact;
    }

    public static CocktailDto cocktailToCocktailDto(Cocktail cocktail) {

        CocktailDto cocktailDto = new CocktailDto();

        cocktailDto.setImgURL(cocktail.getImgURL());
        cocktailDto.setName(cocktail.getName());
        cocktailDto.setRecipe(cocktail.getRecipe());

        return cocktailDto;
    }

    public static Cocktail cocktailDtoToCocktail(CocktailDto cocktailDto) {

        Cocktail cocktail = new Cocktail();

        cocktail.setImgURL(cocktailDto.getImgURL());
        cocktail.setName(cocktailDto.getName());
        cocktail.setRecipe(cocktailDto.getRecipe());

        return cocktail;
    }

    public static List<PartyDto> partiesToPartiesDto(List<Party> parties) {

        List<PartyDto> partyDtoList = new ArrayList<>();

        for (Party party : parties) {

            PartyDto partyDto = new PartyDto();


            partyDtoList.add(partyToPartyDto(party));
        }
        return partyDtoList;
    }

    public static List<CocktailDto> cocktailToCocktailsDto(List<Cocktail> cocktails) {

        List<CocktailDto> cocktailDtoList = new ArrayList<>();

        for (Cocktail cocktail : cocktails) {
            cocktailDtoList.add(cocktailToCocktailDto(cocktail));
        }

        return cocktailDtoList;

    }

    public static List<FactDto> factsToFactsDto(List<Fact> facts) {

        List<FactDto> factDtoList = new ArrayList<>();

        for (Fact fact : facts) {
            factDtoList.add(factToFactDto(fact));
        }

        return factDtoList;

    }

    public static List<Cocktail> cocktailsDtoToCocktails(List<CocktailDto> cocktails) {

        List<Cocktail> cocktailDtoList = new ArrayList<>();

        for (CocktailDto cocktail : cocktails) {
            cocktailDtoList.add(cocktailDtoToCocktail(cocktail));
        }

        return cocktailDtoList;

    }

    public static List<Fact> factsDtoToFacts(List<FactDto> factsDto) {

        List<Fact> factDtoList = new ArrayList<>();

        for (FactDto fact : factsDto) {
            factDtoList.add(factDtoToFact(fact));
        }

        return factDtoList;


    }

}
