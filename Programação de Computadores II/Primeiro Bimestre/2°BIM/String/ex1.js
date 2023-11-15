let text = "John Doe";
let carName1 = "Volvo XC60";  // Double quotes
let carName2 = 'Volvo XC60';  // Single quotes
let answer1 = "It's alright";
let answer2 = "He is called 'Johnny'";
let answer3 = 'He is called "Johnny"';

let texte = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
let length = text.length;

let text1 = "We are the so-called "Vikings" from the north.";


//função slice 
let text2 = "Apple, Banana, Kiwi";
let part = text2.slice(7, 13);// A POSIÇÃO 13 NAO É INCLUIDA
part = text2.slice(7)//A PARTIR DA POSIÇÃO 7

//SUBSTR
let str = "Apple, Banana, Kiwi";
let part2 = str.substr(7, 6);

//replace

let text4 = "Please visit Microsoft and Microsoft!";
let newText = text4.replace("Microsoft", "W3Schools");//CRIA UMA NOVA STRING COM A ALTERAÇÃO NA PRIMEIRA ENCONTRADA

//REPLACE ALL
let text5 = "Please visit Microsoft and Microsoft!";
let newText2 = text5.replaceAll("Microsoft", "W3Schools");//CRIA UMA NOVA STRING COM A ALTERAÇÃO EM TODAS AS ENCONTRADAS


//CONCAT - CONCATENAR DUAS STRING 
let text11 = "Hello";
let text22 = "World";
let text33 = text11.concat(" ", text2); //OUTPUT: "HELLO WORLD"