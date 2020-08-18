package org.academiadecodigo.oneshot.persistence.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cocktail")
public class Cocktail extends AbstractModel{

    private String name;
    private String imgURL;
    private String recipe;

    @ManyToOne
    private Party party;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public String getRecipe() {
        return recipe;
    }

    public void setRecipe(String recipe) {
        this.recipe = recipe;
    }




}
