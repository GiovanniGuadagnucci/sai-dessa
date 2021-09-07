const initChooseAnswer = () => {
  const questions = document.querySelectorAll(".question-choices");
  if (questions) {
    questions.forEach((options) => {
      const answers = options.querySelectorAll(".option");
      answers.forEach((answer) => {
        answer.addEventListener("click", () => {
          const color = answer.dataset.color;
          const choosen = options.querySelector(".choosen-option");
          if (choosen) {
            choosen.classList.remove("choosen-option");
            choosen.classList.remove("background-green");
            choosen.classList.remove("background-gray");
            choosen.classList.remove("background-brown");
            answer.classList.add("choosen-option");
            answer.classList.add(`${color}`);
          } else {
            answer.classList.add(`${color}`);
            answer.classList.add("choosen-option");
          }
        });
      });
    });
  }
};

export { initChooseAnswer };
