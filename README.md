# GraphicsFinal


1+0+9+8 = 18 (even)

## Controls:

Press 1 to turn off colour grading

Press 2 to turn on colour grading

(It’s off by default)

## Colour Grading:

For the colour grading I decided to implement it in a way where the game's screen changes depending on if the player has hit the edge of the runway, then the screen will flash the colour correction for a moment to tell the player that it’s bad to go off of the track. Since as of now there are no playable functions to the game. There is a debug input for the player to see what the colour corrected version would look like. The colour correction is also meant to look a bit hard on the eyes. This is because again, it’s meant to wake the player up, and get them to start driving on the track again.

Off 

![ColourOff](https://github.com/user-attachments/assets/cca1de12-f4e4-495f-b37a-6ebff27b480c)

On

![ColourOn](https://github.com/user-attachments/assets/ba93702b-769e-4a70-86d0-c71ecd3f4539)

Diagram

![ColourDiagram](https://github.com/user-attachments/assets/4923e3d3-88e5-4ce2-b81c-5ffec2d734ad)

## Scrolling textures

For the scrolling texture I decided to make the background scroll with the players direction, so as they're running along the stage it can give the impression of their movement being a little bit faster than it actually is. This was done because having the background just be a static image while the player is running around could get a bit boring and feel like you’re not moving anywhere, so adding this in I feel that it makes the scene feel more alive over all, resulting in a better visual experience for the player

## Additional shaders 1 (Toon with outlines):

For the first additional shader I decided to implement a toon shader with an outline around it. Now I decided on this particular shader because the original game already has a little bit of a toon aesthetic to it, so I felt that it was the right thing to add into the game. On top of that, having an outline around the player can make knowing what’s you, and what’s just the scenery a bit easier to see. In a quick paced game like this, it’s important to know where the player is at all times, having this outline makes it almost a guarantee that the player will have a better idea, plus, I think the model just looks better with an outline applied to it.


No Outline

![NoOutline](https://github.com/user-attachments/assets/615ea3ca-d487-4cb6-a695-d0b4afc94b21)

With outline

![WithOutline](https://github.com/user-attachments/assets/1abb3de4-a20c-46fa-b8e7-f9c716bcaf23)


## Additional shaders 2 (Hologram):

For the second additional shader, I decided to implement a hologram shader into the game to be used as a hit marker. This was because in the original game, no hit marker is present, now I think for a more modern interpretation of this game, a hit marker should be present so the player can more accurately know where they’re shooting. In addition I chose the hologram shader for this because of it being clearly see through, this allows the player to also see what’s behind the shader, so they can also know what they’re gonna shoot, and if they’re gonna actually hit it. 

Original 

![Yoshi's Safari (SNES) Playthrough - NintendoComplete 8-43 screenshot](https://github.com/user-attachments/assets/ee3e2ebe-7654-487d-b677-8b820a099c8b)

New

![Hitmark](https://github.com/user-attachments/assets/f2175991-5176-446b-b17d-b15f00eb9ecd)


Sources: 
Background: https://stock.adobe.com/search?filters%5Bcontent_type%3Aphoto%5D=1&filters%5Bcontent_type%3Aillustration%5D=0&filters%5Bcontent_type%3Azip_vector%5D=0&filters%5Bcontent_type%3Avideo%5D=0&filters%5Bcontent_type%3Atemplate%5D=0&filters%5Bcontent_type%3A3d%5D=0&filters%5Bcontent_type%3Aaudio%5D=0&filters%5Binclude_stock_enterprise%5D=0&filters%5Bis_editorial%5D=0&filters%5Bfree_collection%5D=0&filters%5Bcontent_type%3Aimage%5D=1&k=snow+mountain+texture&order=relevance&search_type=filter-select&get_facets=1&asset_id=268754770

Dinosaur model:
https://assetstore.unity.com/packages/3d/characters/animals/pbr-pachycephalasaurus-226392


Base LUT Code:
Lectures

Trees/Grass
https://assetstore.unity.com/packages/2d/environments/free-stylized-2d-forest-mountains-nature-pack-226551


