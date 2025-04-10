UIBar.destroy();

// UNDO BUTTON
function addUndoButton() {
  // First, remove any existing undo button to prevent duplicates
  $("#undobar").remove();

  // Then, add the undo button to the body of the page
  $("body").prepend(
    "<div id='undobar'><a href='#' id='undoButton'>←</a></div>"
  );

  // Finally, attach the click event to the undo button to perform the undo action
  $("#undoButton").on("click", function (e) {
    e.preventDefault();
    Engine.backward();
  });
}

// Add the undo button when the story starts and after each passage render
$(document).on(":start :passagerender", addUndoButton);
