package org.academiadecodigo.oneshot.persistence.dao.jpa;

import org.academiadecodigo.oneshot.persistence.dao.CocktailDao;
import org.academiadecodigo.oneshot.persistence.model.Cocktail;
import org.springframework.stereotype.Repository;

@Repository
public class CocktailJpaDao extends GenericJpaDao<Cocktail> implements CocktailDao {

    public CocktailJpaDao() {
        super(Cocktail.class);
    }
}
