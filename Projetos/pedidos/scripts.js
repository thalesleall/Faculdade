let checkboxMeiaPizza = document.getElementById("meia-pizza-check");
let selectMeiaPizza = document.getElementById("meia-pizza");

function habilita() {
  if (checkboxMeiaPizza.checked) {
    selectMeiaPizza.removeAttribute("disabled");
  } 
  else if (!checkboxMeiaPizza.checked) {
    selectMeiaPizza.setAttribute("disabled", "disabled");
  }
}
habilita();
checkboxMeiaPizza.addEventListener("change", habilita);


// class pizza{
//   tipo = ""; //Com borda ou recheada
//   doisSabores = false; // Se é pizza meio a meio
//   sabor = ""; // sabores
//   constructor(tipo, doisSabores, sabor, sabor2){
//     this.tipo = tipo;
//     this.doisSabores = doisSabores;
//     this.sabor = sabor;
//     this.sabor2 = sabor2;
//   }
// }

// const pizza1 = new pizza("recheada", true, "Calabresa")
// console.log(pizza1) 

