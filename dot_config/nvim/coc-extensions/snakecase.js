const coc = require("coc.nvim");
let { commands, workspace } = coc;

exports.activate = (context) => {
  context.subscriptions.push(
    commands.registerCommand("code.convertCase", async () => {
      let { logger } = context;
      let { nvim } = workspace;
      let [pos, line] = await nvim.eval('[coc#util#cursor(), getline(".")]');
      logger.info(pos, line);
    })
  );
};
