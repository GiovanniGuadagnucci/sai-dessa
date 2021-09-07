const initChooseAnswer = () => {
  const questions = document.querySelectorAll(".question-choices");
  if (questions) {
    questions.forEach((options) => {
      const answers = options.querySelectorAll(".option");
      answers.forEach((answer) => {
        answer.addEventListener("click", () => {
          var style = window.getComputedStyle(answer);
          console.log(style.getPropertyValue("background-color"));
          const choosen = options.querySelector(".choosen-option");
          if (choosen) {
            choosen.style.background-color = color.opacity();
            choosen.classList.remove("choosen-option");
            answer.classList.add("choosen-option");
          } else {
            answer.classList.add("choosen-option");
          }
        });
      });
    });
  }
};

export { initChooseAnswer };
