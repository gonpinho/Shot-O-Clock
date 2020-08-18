package org.academiadecodigo.oneshot.command;


public class PartyDto {


    private Integer id;
    private String playlistURL;
    private String background;
    private String fontFamily;
    private String googleFontURL;
    private String partyName;
    private String description;
    private String theme;
    private String line;
    private String arrow;


    public String getPlaylistURL() {
        return playlistURL;
    }

    public void setPlaylistURL(String playlistURL) {
        this.playlistURL = playlistURL;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
