var skargi = new Masterpiece({
  height: 1260,
  text: 'skargi text goes here',
  title: 'Kazanie Skargi',
  url: 'images/kazanie-skargi.png',
  miniurl: 'images/minis/kazanie-skargi.png',
  width: 2259,
  focals: new FocalCollection([
    new Focal({
      x: 1650,
      y: 90,
      height: 400,
      width: 300,
      url: 'images/focals/skarga.png',
      title: 'Piotr Skarga'
    }),
    new Focal({
      x: 200,
      y: 200,
      height: 300,
      width: 200,
      url: 'images/focals/king.png',
      title: 'Middle Three'
    }),
    new Focal({
      x: 920,
      y: 420,
      height: 350,
      width: 500,
      url: 'images/focals/middletrio.png',
      title: 'King' 
    })
  ])
});

var matejko = new Masterpiece({
  height: 1600,
  text: 'self portrait text goes here',
  title: 'Matejko Self-Portrait',
  url: 'images/self-portrait.png',
  miniurl: 'images/minis/self-portrait.png',
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
  url: 'images/union-lublin.png',
  miniurl: 'images/minis/union-lublin.png',
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
  url: 'images/stanczyk-smolensk.png',
  miniurl: 'images/minis/stanczyk-smolensk.png',
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
  url: 'images/queen-bona.png',
  miniurl: 'images/minis/queen-bona.png',
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
