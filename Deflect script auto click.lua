    while true do
        wait()
        local thing1 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local thing2 = game:GetService("Workspace"):WaitForChild('Ball').Main
        local distance = (thing2.Position - thing1.Position).magnitude 
        if distance <= 16 then --DONT CHANGE MAYBE CHANGE TO 15 IFYW BUT ITS GOOD DONT GO OVER 16
            mouse1click()
        end
    end  