t=0
if workspace[game.Players.LocalPlayer.Name].Humanoid.RigType==(Enum.HumanoidRigType.R15) then
    R6=false
    game.StarterGui:SetCore("SendNotification", {
	Title = "Checker";
	Text = "This Script Only Works When You Have A R6 Rig";
	Duration = 99999999999999;
	Button1 = "Ok";
})
    elseif workspace[game.Players.LocalPlayer.Name].Humanoid.RigType==(Enum.HumanoidRigType.R6) then
        R6=true
    end
 uis = game:GetService("UserInputService")--NoIdeaIfThisWorks!
 Mobile = uis.TouchEnabled
if Mobile then
    if t==0 then
    t=1
game.StarterGui:SetCore("SendNotification", {
	Title = "Checker";
	Text = "Note: This Script Is Meant For PC And If You Are Not On PC It Might Have Bugs";
	Duration = 15;
})
end
	end
if R6==true then
m2=false
m1=false
att=false
sg=0
yes=true
workspace[game.Players.LocalPlayer.Name].Humanoid.HipHeight=1
workspace[game.Players.LocalPlayer.Name].Humanoid.WalkSpeed=25
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,35,0)
wait(0.5)
end)
end
end


local function GetSound()
    if sg<4 then sg=sg+1 elseif sg==4 then sg=0 end
        if sg==1 then z1:Play() elseif sg==2 then z2:Play() elseif sg==3 then z3:Play() elseif sg==0 or sg==4 then z4:Play() end
    end

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == 'q' then-- first mode
att=true
GetSound()
game:GetService('RunService').Stepped:connect(function()
    if m1==true then--
        if m2 == true then m2=false end
        if m2==false then
        NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/5),1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+27*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+3*math.cos(sine/5))*ANGLES(RAD(-15+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(94+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(94+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(-46+21*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(-100+21*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
end
        end
    end)
m1=true
wait(.5)
m1=false
att=false
elseif k == 'e' then-- second mode
    att=true
    GetSound()
    game:GetService('RunService').Stepped:connect(function()
    if m2==true then--
        if m1 == true then m1=false end
        if m1==false then 
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/5),1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+27*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/5),-1+0.5*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(94+36*math.cos(sine/5)),RAD(0+10*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(94+36*math.cos(sine/5)),RAD(0+-10*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+27*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
end
        end
    end)
m2=true
wait(.5)
m2=false
att=false
elseif k == 'm' then 
    if yes==true then yes=false else yes=true end
        if yes==true then
Main:Play()
else
    Main:Stop()
end
end
end)

HumanDied = false
local reanim
function noplsmesh(hat)
_G.OldCF=workspace.Camera.CFrame
oldchar=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name][hat]:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
game.Players.LocalPlayer.Character=oldchar
wait()
workspace.Camera.CFrame=_G.OldCF
game.Players.LocalPlayer.Character=oldchar
end
_G.ClickFling=false -- Set this to true if u want.
loadstring(game:HttpGet(('https://raw.githubusercontent.com/OofHead-FE/nexo-before-deleted/main/NexoPD'),true))()
z1 = Instance.new("Sound",workspace[game.Players.LocalPlayer.Name].Head) z1.SoundId = "rbxassetid://1158091668" z1.Volume = 5 z1.Looped = false 
z2 = Instance.new("Sound",workspace[game.Players.LocalPlayer.Name].Head) z2.SoundId = "rbxassetid://1158091792" z2.Volume = 5 z2.Looped = false 
z3 = Instance.new("Sound",workspace[game.Players.LocalPlayer.Name].Head) z3.SoundId = "rbxassetid://1158091961" z3.Volume = 5 z3.Looped = false 
z4 = Instance.new("Sound",workspace[game.Players.LocalPlayer.Name].Head) z4.SoundId = "rbxassetid://1158092150" z4.Volume = 5 z4.Looped = false 
Main = Instance.new("Sound",workspace.Camera.CameraSubject) Main.SoundId = "rbxassetid://1847627585" Main.Volume = 3 Main.Looped = true
if yes==true then
Main:Play()
end
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

function hatset(yes,part,c1,c0,nm)
reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
if nm==true then
noplsmesh(yes)
end
end
reanim = game.Players.LocalPlayer.Character.CWExtra.NexoPD
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
---
        coroutine.wrap(function()
        while true do -- anim changer
        if HumanDied then break end
        sine = sine + speed
        local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
        local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
        local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
        local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
        local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
        local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
        if lookvector > reanim.Humanoid.WalkSpeed then
        lookvector = reanim.Humanoid.WalkSpeed
        end
        if lookvector < -reanim.Humanoid.WalkSpeed then
        lookvector = -reanim.Humanoid.WalkSpeed
        end
        if rightvector > reanim.Humanoid.WalkSpeed then
        rightvector = reanim.Humanoid.WalkSpeed
        end
        if rightvector < -reanim.Humanoid.WalkSpeed then
        rightvector = -reanim.Humanoid.WalkSpeed
        end
        local lookvel = lookvector / reanim.Humanoid.WalkSpeed
        local rightvel = rightvector / reanim.Humanoid.WalkSpeed
        if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(36+-15*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
        elseif Root.Velocity.y < -1 then -- fall
        --fall clerp here
        elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-6*math.cos(sine/13)),RAD(0+1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+1*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+2*math.cos(sine/13)),RAD(0+2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+-2*math.cos(sine/13)),RAD(0+-2*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+-5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
        elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+1*math.cos(sine/13)),RAD(0+12*math.cos(sine/13)),RAD(0+5*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+25*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+-35*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
        elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+1*math.cos(sine/13)),RAD(0+12*math.cos(sine/13)),RAD(0+5*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+25*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/5),-1+0*math.cos(sine/5),0+0*math.cos(sine/5))*ANGLES(RAD(0+-35*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(0+0*math.cos(sine/5))),.3)
        end
        srv.RenderStepped:Wait()
        end
        end)()
                workspace.Camera.CameraSubject=workspace[game.Players.LocalPlayer.Name].Head
                game.StarterGui:SetCore("SendNotification", {
	Title = "Loaded!";
	Text = "FE Zombie Made By BlueCat";
	Duration = 15
})
end
        --Created using Nexo Animator