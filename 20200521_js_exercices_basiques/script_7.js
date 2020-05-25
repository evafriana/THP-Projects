const perform = () => {
  while (true) {
    answer = prompt("Que veux tu me dire?");
    if (answer !== null) {
      if (answer.lastIndexOf("?") === answer.length - 1 && answer.length >= 1) {
        console.log("Ouais Ouais...");
        continue;
      } else if (answer.toUpperCase() === answer && answer.length >= 1) {
        console.log("Pwa, calme-toi...");
        continue;
      } else if (answer.toLowerCase().includes("fortnite")) {
        console.log("on s'fait une partie soum-soum ?");
        continue;
      } else if (answer.length === 0) {
        console.log("t'es en PLS ?");
        continue;
      } else {
        console.log("balek.");
      }
    } else {
      break;
    }
  }
}

perform();
