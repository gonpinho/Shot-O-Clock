package org.academiadecodigo.oneshot.persistence.dao.jpa;

import org.academiadecodigo.oneshot.persistence.dao.FactDao;
import org.academiadecodigo.oneshot.persistence.model.Fact;
import org.springframework.stereotype.Repository;

@Repository
public class FactJpaDao extends GenericJpaDao<Fact> implements FactDao {

    public FactJpaDao() {
        super(Fact.class);
    }
}
