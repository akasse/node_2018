//SELECT  "'",id,"'," FROM nestdb.ak_utilisateur LIMIT 1,30;
[
  '{{repeat(50)}}',
  {
    nom: 'Projet {{index()}} {{lorem(1, "words")}}',
    type: '{{random("FO", "FH", "VSAT")}}',
    description: function () {
      return 'Description Projet, ' + this.nom + ' TYPE' + this.type;
    },
    utilisateur: {
      id: function () {
        var ids =
          [
            '43ebb857-8878-41ad-bf8b-79865a07e5d2',
            '12bcfbcb-32c8-4cfe-ad01-df119fa649e0',
            'b63da607-40b7-4a71-bb48-73c1be2eeb7f',
            '8b9d148d-5eb8-44d6-a0d0-f538e5807d8f',
            '6a614581-e303-49d6-ab36-8aa854dd02d4',
            '75a7468d-a4a5-423b-beec-1cc97bf45c8a',
            '5ebbd792-5910-43c7-8a17-1df5a931166b',
            'a18d499a-a270-489d-b39c-bb9537207525',
            '824dbcbe-6c62-4e5d-9b53-121b94cd0697',
            'a7be80fc-c30c-47ea-927e-7b2e9d77ca42',
            '757ddcd5-9843-4296-ad26-7228e512e98b',
            '5bb8787b-bdcf-4461-82b1-6365ce70539b',
            '28517a96-45b4-41fa-b0c2-e5de7260c3d9',
            '81fd3dfa-601a-40d9-94f5-b581471def1e',
            '376e22df-b0c8-475e-a1c9-b5274f5b2404',
            'd72da4f9-8264-4cb5-ab0e-c0a4af00171a',
            '730bf461-b0dd-4503-b201-c60662e66538',
            '1b26dcd8-b462-4590-b89d-ce835a83e419',
            'd8f15e80-c2cc-4660-a6d5-3cef9b1c9c7b',
            '062574d6-267b-4bf1-b76b-5f3d5dca194e',
            '68955689-654f-46fe-b834-8858cbf20a40',
            'e7700f9c-79e6-4f02-8d02-712d93340450',
            'ce4c62d7-cd3f-4db9-b214-32cdd2f3949a',
            '00fdba6b-9066-4579-928f-787d7d790ba4',
            '022e7194-5feb-4101-95ba-edd3b24adfea',
            '256f4763-8101-4043-b998-13d82e61b1b3',
            'f02078e8-88ef-4d67-9fc3-eb6b265d9964',
            'a63b7e33-4305-4f3b-8459-5f419f8518e4',
            '20bdacbf-2e8c-4061-ae43-247d622c0a49',
            '6537a150-5766-4287-b31b-e9c415b56e8a'
          ];

        return ids[Math.floor(Math.random() * 30)];
      }
    }
  }
]

