import SOE

spaceClose :: Window -> IO ()
spaceClose w
  = do k <- getKey w
       if k==' ' || k == '\x0'
          then closeWindow w
          else spaceClose w

pic1 = withColor Red 
         (ellipse (150,150) (300,200))

pic2 = withColor Blue
         (polyline [(100,50),(200,50),
                    (200,250),(100,250),(100,50)])

main :: IO ()
main = runGraphics(
        do w <- openWindow "My first Graphic Program" (300,300)
           drawInWindow w (text(100, 200) "HelloGraphicsWorld")
           drawInWindow w pic1
           drawInWindow w pic2
           spaceClose w
    )
