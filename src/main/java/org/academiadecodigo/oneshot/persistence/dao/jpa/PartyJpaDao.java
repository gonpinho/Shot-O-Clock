package org.academiadecodigo.oneshot.persistence.dao.jpa;

import org.academiadecodigo.oneshot.persistence.dao.PartyDao;
import org.academiadecodigo.oneshot.persistence.model.Party;
import org.springframework.stereotype.Repository;

@Repository
public class PartyJpaDao extends GenericJpaDao<Party> implements PartyDao {

    public PartyJpaDao() {
        super(Party.class);
    }
}
