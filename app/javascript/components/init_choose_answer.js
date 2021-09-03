const initChooseAnswer = () => {
  const questions = document.querySelectorAll(".options");
  if (questions) {
    questions.forEach(options => {
      const answers = options.querySelectorAll('.fa-dot-circle');
      answers.forEach(answer => {
        answer.addEventListener("click", () => {
          const choosen = options.querySelector('.choosen-option');
          if (choosen) {
            choosen.classList.remove("choosen-option");
            answer.classList.add("choosen-option");
          } else {
            answer.classList.add("choosen-option");
          }
        })
      });
    });
  }
}

export { initChooseAnswer };
