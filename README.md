# Project-Unique
"Project Unique" is the engine behind Love Game Maker; a tool allowing kids to easily create games using the LOVE2D framework.

It allows for extremely simple coding of games not possible in most other engines!
For example, let's take the simple process of drawing a picture (Known as a "sprite.") to the screen.

In MonoGame, (A popular open-source interpretation of Microsoft's game framework, XNA.) drawing a picture named "smiley.png" to the screen goes something like this:

```C#
using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace example
{
    public class Main : Game
    {
        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;
        Texture2D smiley;

        public Main(): base()
        {
            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
        }

        protected override void LoadContent()
        {
            spriteBatch = new SpriteBatch(GraphicsDevice);
            smiley = Content.Load<Texture2D>("smiley");
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Black);

            spriteBatch.Begin();
            spriteBatch.Draw(smiley,new Vector2(0,0));
            spriteBatch.End();

            base.Draw(gameTime);
        }
    }
}
```

While in Project Unique, the same task can be accomplished like so:

```Lua
Class = require "Main.libraries.hump.class"
require "Main.Sprite"
require "Main.Object"
require "Main.Resources"

Objects.Add(0,0,Sprite({"smiley.png"}))

function love.draw()
    Objects.Draw()
end
```

And that's not all! I'm currently working on making it even simpler! So you'll literally be able to shorten that already tiny bit of code down to this:

```Lua
require "ProjectUnique"

Objects.Add(0,0,Sprite({"smiley.png"}))

function love.draw()
    Objects.Draw()
end
```

Just to let that really sink in, that's 38 lines of code in MonoGame vs. 7 lines of code in Project Unique. And both accomplish the same task.

##More README content coming soon!
