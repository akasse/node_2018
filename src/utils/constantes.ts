export declare enum EventUser {
    CONNECT = 'AUTHENTIFICATION',
    DECONNECT= "DECONNECTER",
    TENTATIVE_CON= "TENTATIVE_CONNECTION",
    TENT= "TENTATIVE_CONNECTION",
    CREATE= "CREATION",
    UPDATE= "MODIFICATION",
    DELETE= "SUPPRESSION",
    CHAT= "CHAT"
}

export declare enum MessageErreur {
    SUCCESS = 0,
    ERROR= 1,
    MSG_SUCCES= "OK",
    MSG_ERROR= "Erreur au niveau des champs",
    MSG_ERROR_SERVER= "Probléme au niveau du serveur",
    MSG_JWT= "Token invalide"
}

export declare enum Prefixe {
    API_PREFIXE = 'api/',
    BD_PREFIXE = 'ak_',
}

export declare enum ApiRessource {
    GETALL = 'getAll',
    GETONE = 'getOne',
    ADD = 'add',
    UPDATE = 'update',
    DELETE = 'delete'
}




