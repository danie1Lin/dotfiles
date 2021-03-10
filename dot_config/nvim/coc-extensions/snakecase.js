const { commands, workspace } = require("coc.nvim");

exports.activate = (context) => {
  let { nvim } = workspace;
  context.subscriptions.push(
    commands.registerCommand("code.convertCase", async () => {
      let [pos, line] = await nvim.eval('[coc#util#cursor(), getline(".")]}')
    })
  );
};
