[
    '{{repeat(50)}}',
    {
      prenom: '{{firstName()}} {{surname()}}',
      nom: '{{surname()}}',
      email: '{{email()}}',
      password: 'passer',
      roles: [
        '{{repeat(1)}}',
        {
          nom: '{{random("STAFF", "ADMIN", "USER")}}'
        }
      ]
    }
  ]
  