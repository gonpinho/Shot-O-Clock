package org.academiadecodigo.oneshot.persistence.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "party")
public class Party extends AbstractModel {

    private String playlistURL;
    private String background;
    private String fontFamily;
    private String googleFontURL;
    private String partyName;
    private String description;
    private String theme;
    private String line;
    private String arrow;


    @OneToMany(
            cascade = {CascadeType.ALL},
            orphanRemoval = true,
            mappedBy = "party",
            fetch = FetchType.EAGER
    )
    private List<Fact> facts = new ArrayList<>();

    @OneToMany(
            cascade = {CascadeType.ALL},
            orphanRemoval = true,
            mappedBy = "party"
    )
    private List<Cocktail> cocktails = new ArrayList<>();

    public List<Fact> getFacts() {
        return facts;
    }

    public void setFacts(List<Fact> facts) {
        this.facts = facts;
    }


    public String getPlaylistURL() {
        return playlistURL;
    }

    public void setPlaylistURL(String musicURL) {
        this.playlistURL = musicURL;
    }

    public List<Cocktail> getCocktails() {
        return cocktails;
    }

    public void setCocktails(List<Cocktail> cocktails) {
        this.cocktails = cocktails;
    }

    public String getBackground() {
        return background;
    }

    public void setBackground(String background) {
        this.background = background;
    }

    public String getFontFamily() {
        return fontFamily;
    }

    public void setFontFamily(String fontFamily) {
        this.fontFamily = fontFamily;
    }

    public String getPartyName() {
        return partyName;
    }

    public void setPartyName(String partyName) {
        this.partyName = partyName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGoogleFontURL() {
        return googleFontURL;
    }

    public void setGoogleFontURL(String googleFontURL) {
        this.googleFontURL = googleFontURL;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getLine() {
        return line;
    }

    public void setLine(String line) {
        this.line = line;
    }

    public String getArrow() {
        return arrow;
    }

    public void setArrow(String arrow) {
        this.arrow = arrow;
    }


}
