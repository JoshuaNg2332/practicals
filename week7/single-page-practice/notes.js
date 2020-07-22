makeUrlChangeShowAnimalForCurrentPage();

function makeUrlChangeShowAnimalForCurrentPage() {
  window.addEventListener("hashchange", showAnimalForCurrentPage);
};

function showAnimalForCurrentPage() {
  showAnimal(getAnimalFromUrl(window.location));
};

function getAnimalFromUrl(location) {
  return location.hash.split("#")[1];
};

function showAnimal(animal) {
  document
    .getElementById("animal")
    .innerHTML = animal;
};



class Note {

  constructor(){
  this.content = " ";
  }

  create(note) {
    this.content = note
  }
};


class Notes {

  constructor(){
    this.array = [];
  }

  add(note) {
    this.array.push(note)
  }
};