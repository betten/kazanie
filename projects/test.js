var skargi = new Masterpiece({
  height: 1260,
  text: 'skargi text goes here',
  title: 'Kazanie Skargi',
  url: 'images/kazanie-skargi.jpg',
  width: 2259,
  focals: new FocalCollection([
    new Focal({
      x: 50,
      y: 50,
      height: 50,
      width: 50
    }),
    new Focal({
      x: 200,
      y: 200,
      height: 100,
      width: 200
    }),
    new Focal({

    })
  ])
});

var matejko = new Masterpiece({
  height: 1600,
  text: 'self portrait text goes here',
  title: 'Matejko Self-Portrait',
  url: 'images/self-portrait.jpg',
  width: 1055,
  focals: new FocalCollection([
    new Focal({

    }),
    new Focal({

    }),
    new Focal({

    })
  ])
});

var lubelska = new Masterpiece({
  height: 481,
  text: 'lubelska text goes here',
  title: 'Union of Lublin',
  url: 'images/union-lublin.jpg',
  width: 800,
  focals: new FocalCollection([
    new Focal({

    }),
    new Focal({

    }),
    new Focal({

    })
  ])
});

var stanczyk = new Masterpiece({
  height: 600,
  text: 'text for stanczyk goes here',
  title: 'Stanczyk',
  url: 'images/stanczyk-smolensk.jpg',
  width: 428,
  focals: new FocalCollection([
    new Focal({

    }),
    new Focal({

    }),
    new Focal({

    })
  ])
});

var bona = new Masterpiece({
  height: 600,
  text: 'text for stanczyk goes here',
  title: 'Poisoning of Queen Bona',
  url: 'images/queen-bona.jpg',
  width: 459,
  focals: new FocalCollection([
    new Focal({

    }),
    new Focal({

    }),
    new Focal({

    })
  ])
});

var masterpieces = new MasterpieceCollection([
  skargi,
  matejko,
  lubelska,
  stanczyk,
  bona
]);
