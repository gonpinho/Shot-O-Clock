package org.academiadecodigo.oneshot.persistence.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "fact")
public class Fact extends AbstractModel{

    private String factStr;

    @ManyToOne
    private Party party;

    public String getFactStr() {
        return factStr;
    }

    public void setFactStr(String factStr) {
        this.factStr = factStr;
    }

    public Party getParty() {
        return party;
    }

    public void setParty(Party party) {
        this.party = party;
    }



}
