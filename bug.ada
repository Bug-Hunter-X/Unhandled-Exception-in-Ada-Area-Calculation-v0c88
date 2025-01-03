```ada
function Calculate_Area(Length : in Float; Width : in Float) return Float is
begin
  return Length * Width;
end Calculate_Area;

procedure Main is
   Area : Float;
begin
   Area := Calculate_Area(10.0, 5.0); -- This line will cause an exception if Length or Width are 0
   Ada.Text_IO.Put_Line("Area:" & Float'Image(Area));
exception
   when others =>
      Ada.Text_IO.Put_Line("An error occurred.");
end Main;
```