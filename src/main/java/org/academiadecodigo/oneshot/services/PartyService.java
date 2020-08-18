package org.academiadecodigo.oneshot.services;

import org.academiadecodigo.oneshot.persistence.dao.PartyDao;
import org.academiadecodigo.oneshot.persistence.model.Cocktail;
import org.academiadecodigo.oneshot.persistence.model.Party;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class PartyService {

    private PartyDao partyDAO;

    public PartyDao getPartyDAO() {
        return partyDAO;
    }

    @Autowired
    public void setPartyDAO(PartyDao partyDAO) {
        this.partyDAO = partyDAO;
    }

    @Transactional
    public List<Party> list() {
        return partyDAO.findAll();
    }

    @Transactional
    public List<Cocktail> listCocktails(Integer id) {
        Party party = partyDAO.findById(id);
        return new ArrayList<>(party.getCocktails());
    }

    @Transactional
    public Party get(Integer id) {
        return partyDAO.findById(id);
    }
}
