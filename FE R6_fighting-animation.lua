wait(2)
local player = game.Players.LocalPlayer
local char = player.Character
local mouse = player:GetMouse()
local sine=0
local change=1
local ws = 23
local debunk = false
local keycombo = Instance.new("StringValue",char)
keycombo.Name = "KeyComboCounter"
chr=player.Character
human=chr:FindFirstChild("Humanoid")
human.WalkSpeed = ws
tors=chr["Torso"]
rarm=chr["Right Arm"]
larm=chr["Left Arm"]
rleg=chr["Right Leg"]
lleg=chr["Left Leg"]
hrp=chr["HumanoidRootPart"]
hed=chr["Head"]
cf=CFrame.new
ang=CFrame.Angles
rd=math.rad
rd2=math.random
local RS=Instance.new("Weld",tors)
RS.Part0= tors
RS.Part1= rarm
local LS=Instance.new("Weld",tors)
LS.Part0= tors
LS.Part1= larm
local RH=Instance.new("Weld",tors)
RH.Part0= tors
RH.Part1= rleg
local LH=Instance.new("Weld",tors)
LH.Part0= tors
LH.Part1= lleg
local RJ=Instance.new("Weld",hrp)
RJ.Part0= hrp
RJ.Part1= tors
local N=Instance.new("Weld",tors)
N.Part0= tors
N.Part1= hed
RSC0=CFrame.new(1.5,0,0)
LSC0=CFrame.new(-1.5,0,0)
RHC0=CFrame.new(0.5,-2,0)
LHC0=CFrame.new(-0.5,-2,0)
NC0=CFrame.new(0,1.5,0)
RJC0=CFrame.new(0,0,0)
function chat(msg)
	game:GetService("Chat"):Chat(hed,msg,"White")
end
local dmgTable = {}
function clear()
	dmgTable = {};
end
function dmg(prt,magg,d,mode)
	local noDelay = coroutine.wrap(function()
	local players = game.Workspace:GetChildren()
	for i = 1,#players do
		local plyer = players[i]
		if plyer:FindFirstChild("Torso") ~= nil then
		local mag = (plyer.Torso.Position-prt.Position).magnitude
		if mag <= magg and plyer:FindFirstChild("Humanoid") ~= nil and dmgTable[plyer] == nil and plyer ~= char then
			dmgTable[plyer] = true
			plyer:FindFirstChild("Humanoid"):TakeDamage(d)
function cv()
local c = Instance.new("BodyVelocity")
c.Parent = plyer:FindFirstChild("Torso")
return c
end
if mode == 'stall' then
local b = cv()
b.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
b.Velocity = hrp.CFrame.lookVector*20
local b2 = Instance.new("Part")
b2.Size = Vector3.new(0.1,0.1,0.1)
b2.BrickColor = BrickColor.new("Lily white")
b2.CanCollide = false
b2.Parent = plyer
b2.Material = "Neon"
b2.Anchored = true
local mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Sphere"
mesh.Parent = b2
b2.CFrame = plyer:FindFirstChild("Torso").CFrame
local rn = 0.25
TweenMe(mesh,"Scale",Vector3.new(50,50,50),rn,'Linear',"Out")
TweenMe(b2,"Transparency",1,rn,'Linear',"Out")
game.Debris:AddItem(b,0.4)
game.Debris:AddItem(b2,rn)
elseif mode == 'fling' then
plyer:FindFirstChild("Humanoid").PlatformStand = true
local b = cv()
b.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
b.Velocity = Vector3.new(0,40,0)
game.Debris:AddItem(b,0.1)
wait(1)
plyer:FindFirstChild("Humanoid").PlatformStand = false
elseif mode == nil then
--oi
end
		end
		end
	end
	end)
	noDelay()
end
function lerpz(joint,prop,cfrmz,alp)
        joint[prop]=joint[prop]:lerp(cfrmz,alp)
end
function TweenMe(joint,prop,cfrmz,alp,es,ed)
local ts = game:GetService("TweenService")
local ti = TweenInfo.new(alp,Enum.EasingStyle[es],Enum.EasingDirection[ed],0,false,0)
local pp = {[prop] = cfrmz}
local tween = ts:Create(joint,ti,pp)
tween:Play()
end
local walk = false
local idle = false
local jump = false
local jumpCheck = false
local fall = false
local AnimDisable = false
game:GetService("RunService").RenderStepped:connect(function()
sine=sine+change
if AnimDisable == false then
if jumpCheck == true then
idle = false
walk = false
fall = false
jump = true
elseif human.MoveDirection ~= Vector3.new(0,0,0) then
fall = false
walk = true
jump = false
idle = false
elseif human.MoveDirection == Vector3.new(0,0,0) then
walk = false
fall = false
jump = false
idle = true
end
else
walk = false
fall = false
jump = false
idle = false
end
end)
human.StateChanged:connect(function(state)
	if state == Enum.HumanoidStateType.Jumping then
		jumpCheck = true
	else
		jumpCheck = false
	end
end)
--[[
lerpz(N,'C0',NC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.4)
lerpz(RS,'C0',RSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.4)
lerpz(LS,'C0',LSC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.4)
lerpz(RH,'C0',RHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.4)
lerpz(LH,'C0',LHC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.4)
lerpz(RJ,'C0',RJC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.4)
lerpz(w1,'C0',HC0*cf(0,0,0)*ang(rd(0),rd(0),rd(0)),0.4)
--]]
local playAnims = coroutine.wrap(function()
while game:GetService("RunService").RenderStepped:Wait() do
	if walk == true then
		local ispeed = 6.5
lerpz(N,'C0',cf(0,0,0)*cf(0, 1.51044273, -0.0793155581, 1, 0, 0, 0, 0.991445005, 0.130525351, 0, -0.130525351, 0.991445005),0.3)						
lerpz(RJ,'C0',cf(0,-0.1*math.cos(sine/ispeed*2),0)*cf(-0, -0.0329929851, -0.0633806586, 1, 0, 0, 0, 0.991444886, 0.130525991, 0, -0.130525991, 0.991444886),0.15)						
lerpz(LS,'C0',cf(0,0,0)*ang(rd(5)*math.cos(sine/ispeed*2-2.5),rd(0),rd(0))*cf(-1.49999917, 0.15496558, 0.421952784, 0.965925753, 0.258819401, 1.80434498e-07, -0.2053352, 0.766319931, 0.608762205, 0.157559305, -0.588019073, 0.793352783),0.3)						
lerpz(RS,'C0',cf(0,0,0)*ang(rd(5)*math.cos(sine/ispeed*2-2.5),rd(0),rd(0))*cf(1.50000048, 0.15496543, 0.421952873, 0.965925753, -0.258819401, -1.80434498e-07, 0.2053352, 0.766319931, 0.608762205, -0.157559305, -0.588019073, 0.793352783),0.3)						
lerpz(LH,'C0',cf(0,-0.2*math.cos(sine/ispeed),0)*ang(rd(30)*math.cos(sine/ispeed),rd(0),rd(0))*ang(rd(-10),rd(0),rd(0))*cf(-0.5, -1.98172665, -0.138802499, 1, 0, 0, 0, 0.991444886, -0.130525991, 0, 0.130525991, 0.991444886),0.3)						
lerpz(RH,'C0',cf(0,0.2*math.cos(sine/ispeed),0)*ang(rd(-30)*math.cos(sine/ispeed),rd(0),rd(0))*ang(rd(-10),rd(0),rd(0))*cf(0.5, -1.98172665, -0.138802499, 1, 0, 0, 0, 0.991444886, -0.130525991, 0, 0.130525991, 0.991444886),0.3)
	elseif idle ==  true then
		local ispeed = 25
lerpz(N,'C0',cf(0,0,0)*ang(rd(2.5)*math.cos(sine/ispeed+5),rd(0),rd(0))*cf(0, 1.5, 0, 0.965925872, 0, 0.258818984, 0, 1, 0, -0.258818984, 0, 0.965925872),0.3)						
lerpz(RJ,'C0',cf(0,0.05*math.cos(sine/ispeed),0)*ang(rd(0),rd(0),rd(0))*cf(0.0553113967, 0, -0.0343635082, 0.965925872, 0, -0.258818984, 0, 1, 0, 0.258818984, 0, 0.965925872),0.3)						
lerpz(LS,'C0',cf(0,0.075*math.cos(sine/ispeed),0)*ang(rd(5)*math.cos(sine/ispeed+5),rd(0),rd(0))*cf(-0.80000931, 6.1839819e-06, -0.699998617, 0.872358739, -0.285722077, 0.396677732, 0.075735949, -0.722639203, -0.687063873, 0.482964218, 0.629408836, -0.608761191),0.3)						
lerpz(RS,'C0',cf(0,0.05*math.cos(sine/ispeed),0)*ang(rd(3)*math.cos(sine/ispeed+6),rd(0),rd(0))*cf(0.80001229, -2.09640712e-06, -0.399999619, 0.825135529, 0.460114419, -0.327790141, 0.103553019, -0.693580091, -0.712898016, -0.555363417, 0.554293752, -0.619943798),0.3)						
lerpz(LH,'C0',cf(0,-0.05*math.cos(sine/ispeed),0)*ang(rd(0),rd(0),rd(0))*cf(-0.577635169, -2, -0.28978011, 0.965925872, 0, 0.258818984, 0, 1, 0, -0.258818984, 0, 0.965925872),0.3)						
lerpz(RH,'C0',cf(0,-0.05*math.cos(sine/ispeed),0)*ang(rd(0),rd(2.5)*math.cos(sine/ispeed-7),rd(0))*cf(0.596590638, -2.00000167, -0.0258873031, 0.992017984, -0.126079038, 0.00213871896, 0.126079023, 0.991444826, -0.0337826125, 0.00213886797, 0.0337826051, 0.999426961),0.3)
	elseif jump == true then
lerpz(N,'C0',cf(0, 1.50000012, 8.04662704e-07, 1, 0, 0, 0, 0.991444886, 0.130525991, 0, -0.130525991, 0.991444886),0.3)						
lerpz(RJ,'C0',cf(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1),0.3)						
lerpz(LS,'C0',cf(-1.49999905, 1.40039241, 0.0119714886, 0.86602509, 0.500000656, -2.27510498e-07, 0.498930067, -0.864170909, -0.065403536, -0.0327020027, 0.0566409938, -0.997858882),0.3)						
lerpz(RS,'C0',cf(1.49999952, 1.40039217, 0.0119715035, 0.86602509, -0.500000656, 2.27510498e-07, -0.498930067, -0.864170909, -0.065403536, 0.0327020027, 0.0566409938, -0.997858882),0.3)						
lerpz(LH,'C0',cf(-0.5, -1.43999648, -0.159999192, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829),0.3)						
lerpz(RH,'C0',cf(0.5, -2.0000031, -1.43051147e-06, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872),0.3)
	end
end
end)
playAnims()
mouse.KeyDown:connect(function(key)
	key=key:lower()
	--[[
	if debunk == false then
		debunk = true
		debunk = false
	end
	--]]
end)
local timerActive = false
function startTimer()
	local start = coroutine.wrap(function()
		timerActive = true
		wait(0.3)
		timerActive = false
		keycombo.Value = ""
	end)
	start()
end
mouse.KeyDown:connect(function(key)
	key=key:lower()
	if key == "q" or key == "e" or key == "r" or key == "w" then
		if timerActive == false then
			startTimer()
		end
		keycombo.Value = keycombo.Value..key
	end
end)
keycombo.Changed:connect(function()
	if debunk == false then
		debunk = true
		if keycombo.Value == "ww" then
			chat("Dash!")
			human.Jump = true
			wait(0.25)
			local bp = Instance.new("BodyVelocity")
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.Velocity = hrp.CFrame.lookVector*200
			bp.Parent = hrp
			game.Debris:AddItem(bp,0.25)
			AnimDisable = true
			local effect = coroutine.wrap(function()
				for i = 1,5 do 
					local b = Instance.new("Part",workspace)
					b.Size = Vector3.new(1,1,1)
					b.Anchored = true
					b.CanCollide = false
					b.CFrame = hrp.CFrame*ang(rd(0),rd(0),rd(0))
					b.BrickColor = BrickColor.new("Lily white")
					local m = Instance.new("SpecialMesh",b)
					m.MeshId = "rbxassetid://447511870"
					m.Scale = Vector3.new(0.1,0.1,0.1)
					TweenMe(m,'Scale',Vector3.new(4,4,4),1,'Sine','Out')
					TweenMe(b,'Transparency',1,1,'Sine','Out')
					game.Debris:AddItem(b,1)
					wait(0.10)
				end
			end)
			effect()
			for i = 1,35 do game:GetService("RunService").RenderStepped:Wait()
				lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, 1.39998221, 0.199995935, 1, 0, 0, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829),0.3)						
				lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(i*10))*cf(0, -7.62939453e-06, -0.500007629, 1, 0, 0, 0, 0, 1, 0, -1, 0),0.3)						
				lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.800012112, 1.39998722, -0.100000381, 0.965925872, -0.258818984, 0, -0.258818984, -0.965925872, 0, 0, 0, -1),0.3)						
				lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.800009549, -0.100011289, 0.399989724, 0.866025388, 0.433012873, 0.250000089, -0.500000238, 0.74999994, 0.433012635, 0, -0.49999994, 0.866025507),0.3)						
				lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.5, -2, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1),0.3)						
				lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.5, -1.69999874, -0.100010276, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872),0.3)
			end
			human.WalkSpeed = 0
			for i = 1,50 do game:GetService("RunService").RenderStepped:Wait()
				lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, 1.35858202, 0.141418517, 1, 0, 0, 0, 0.707106888, -0.707106888, 0, 0.707106888, 0.707106888),0.4)						
				lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0, -1.44645298, -0.353531837, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829),0.4)						
				lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-1.1000061, 0.0707251132, -0.777833343, 1, 0, 0, 0, 0.707106888, -0.707106888, 0, 0.707106888, 0.707106888),0.4)						
				lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.49998319, 0.424259901, 0.424250931, 0.866025388, -0.433012873, -0.250000089, 0.353553623, 0.176776737, 0.918558955, -0.353553623, -0.883883595, 0.306186438),0.4)						
				lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.5, -1.85858405, -0.141419977, 1, 0, 0, 0, 0.96592617, 0.258818954, 0, -0.258818954, 0.96592617),0.4)						
				lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.5, -1.08076954, -0.353546888, 1, 0, 0, 0, 0.96592617, 0.258818954, 0, -0.258818954, 0.96592617),0.4)
			end
			human.WalkSpeed = ws
			AnimDisable = false
		elseif keycombo.Value == "qeq" then
			chat("Special Art: Table-Kick!")
			AnimDisable = true
			human.WalkSpeed = ws/2
			for i = 1,150 do game:GetService("RunService").RenderStepped:Wait()
				dmg(larm,2.5,5,'stall')
				clear()
				lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),0.2)						
				lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(i*20),rd(0))*cf(0, -0.999991417, -3.81469727e-06, 1, 0, 0, 0, -1, 0, 0, 0, -1),0.3)						
				lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-1.30001867, 1.00000417, 0, 0.965925872, -0.258818984, 0, -0.258818984, -0.965925872, 0, 0, 0, -1),0.2)						
				lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.29999626, 1.10000241, 0, 0.965925872, 0.258818984, 0, 0.258818984, -0.965925872, 0, 0, 0, -1),0.2)						
				lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.5, -0.75, 1.25, 1, 0, 0, 0, 0, 1, 0, -1, 0),0.2)						
				lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.5, -0.75, -1.25, 1, 0, 0, 0, 0, -1, 0, 1, 0),0.2)
			end
			human.WalkSpeed = ws
			AnimDisable = false
		elseif keycombo.Value == "qee" then
			local targ = nil
			AnimDisable = true
			chat("Searching!")
			human.WalkSpeed = 0
			for i = 1,20 do game:GetService("RunService").RenderStepped:Wait()
				lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, 1.42926097, -0.212115929, 1, 0, 0, 0, 0.96592629, 0.258819014, 0, -0.258819014, 0.96592629),0.3)						
				lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0, -1.34645367, -0.153540015, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829),0.3)						
				lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.79999733, -0.141433418, -0.848529637, 1, 0, 0, 0, 0.707107008, -0.707107008, 0, 0.707107008, 0.707107008),0.3)						
				lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.4999975, 0.565671921, 0.565689981, 0.965925872, -0.183012545, -0.183012769, 0.183012709, -0.0170376897, 0.982963324, -0.183012709, -0.982963383, 0.0170365274),0.3)						
				lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.5, -0.727241397, -0.565664232, 1, 0, 0, 0, 0.96592629, -0.258819014, 0, 0.258819014, 0.96592629),0.3)						
				lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.5, -1.29290819, -0.282837003, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),0.3)
			end
			local pl = game.Workspace:GetChildren()
			for i = 1,#pl do wait(0.1)
				local p = pl[i]
				if p:FindFirstChild("Humanoid") ~= nil and p:FindFirstChild("Torso") ~= nil and (tors.Position-p:FindFirstChild("Torso").Position).magnitude <= 12 and p ~= char then
					targ = p
					break
				end
			end
			if targ ~= nil then
				chat("Hehe, found you!")
				local he = hrp.CFrame*CFrame.new(0,0,-2.5)
				local bp = Instance.new("BodyPosition")
				bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				bp.Position = he.p
				
				local ws2 = targ.Humanoid.WalkSpeed
				targ.Humanoid.WalkSpeed = 0
				TweenMe(hrp,'CFrame',cf(hrp.CFrame.p,targ["Torso"].CFrame.p),0.3,"Sine","Out")
				wait(0.3)
				bp.Parent = targ.Torso
				--TweenMe(targ.Torso,'CFrame',hrp.CFrame*CFrame.new(0,0,-2.5),0.3,"Sine","Out")
				wait(0.3)
				targ.Humanoid.PlatformStand = true
			for i = 1,10 do game:GetService("RunService").RenderStepped:Wait()
				lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.141411513, 1.50001216, 1.1920929e-07, 0.118095413, -0.40599972, 0.906211019, 0.0233599991, 0.913480461, 0.40621236, -0.992727458, -0.0268027037, 0.117361926),0.3)						
				lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.90734863e-06, -0.146449849, 0.353566885, 0, 0, -1, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, 0),0.3)						
				lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.792881072, -0.141415149, -0.199999869, 0.85978967, -0.476727188, 0.183012486, 0.506236255, 0.842752635, -0.183012843, -0.066986993, 0.24999994, 0.965925872),0.3)						
				lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.792896688, 1.31577253e-05, -0.399996907, 0.965926409, -0.25881803, 0, -0.183011889, -0.683013022, -0.707107186, 0.183011979, 0.683013022, -0.707106709),0.3)						
				lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-1.48994112, -0.868618309, -0, 0, 1.00000036, 0, -1.00000036, 0, 0, -0, 0, 1),0.3)						
				lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.27781463, -1.50503278, -0, 0.707107008, -0.707107008, 0, 0.707107008, 0.707107008, 0, 0, 0, 1),0.3)
			end
			bp.Position = targ.Torso.Position+Vector3.new(0,55,0)
				bp.Parent = targ.Torso
			for i = 1,20 do game:GetService("RunService").RenderStepped:Wait()
				lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, 1.42926097, -0.212115929, 1, 0, 0, 0, 0.96592629, 0.258819014, 0, -0.258819014, 0.96592629),0.3)						
				lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0, -1.34645367, -0.153540015, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829),0.3)						
				lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.79999733, -0.141433418, -0.848529637, 1, 0, 0, 0, 0.707107008, -0.707107008, 0, 0.707107008, 0.707107008),0.3)						
				lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.4999975, 0.565671921, 0.565689981, 0.965925872, -0.183012545, -0.183012769, 0.183012709, -0.0170376897, 0.982963324, -0.183012709, -0.982963383, 0.0170365274),0.3)						
				lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.5, -0.727241397, -0.565664232, 1, 0, 0, 0, 0.96592629, -0.258819014, 0, 0.258819014, 0.96592629),0.3)						
				lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.5, -1.29290819, -0.282837003, 1, 0, 0, 0, 1.00000036, 0, 0, 0, 1.00000036),0.3)
			end
			local bp2 = Instance.new("BodyPosition")
			bp2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp2.Position = hrp.Position+Vector3.new(0,56,0)
			bp2.Parent = hrp
			for i = 1,70 do game:GetService("RunService").RenderStepped:Wait()
				lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, 1.47412109, -0.0965889096, 1, 0, 0, 0, 0.866025567, 0.49999994, 0, -0.49999994, 0.866025567),0.1)						
				lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, -0.0170359965, 0.129414037, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872),0.1)						
				lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-1, 1.21780777, 0.294848144, 0.965925872, -0.224143818, 0.129409537, -0.249999985, -0.937422395, 0.242362708, 0.0669872835, -0.266456783, -0.96151638),0.1)						
				lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.899999797, 1.3144052, 0.268959463, 0.965925872, 0.224143818, -0.129409537, 0.249999985, -0.937422395, 0.242362708, -0.0669872835, -0.266456783, -0.96151638),0.1)						
				lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.800000966, -1.89647675, 0.386361182, 0.965925872, 0.24999994, 0.0669872537, -0.249999985, 0.83423394, 0.491481364, 0.0669872835, -0.491481394, 0.868308127),0.1)						
				lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.900001347, -1.89647472, 0.386355758, 0.965925872, -0.24999994, -0.0669872537, 0.249999985, 0.83423394, 0.491481364, -0.0669872835, -0.491481394, 0.868308127),0.1)
			end
			for i = 1,10 do game:GetService("RunService").RenderStepped:Wait()
				lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, 1.47411871, -0.0965853333, 1, 0, 0, 0, 0.866025567, 0.49999994, 0, -0.49999994, 0.866025567),0.4)						
				lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0, -0.307759345, 0.0693720281, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872),0.4)						
				lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.600000501, 0.491750062, -1.24555659, 0.965925992, -0.224143937, 0.129408777, 0.129408777, -0.0147545189, -0.991481662, 0.224143982, 0.974444509, 0.0147544444),0.4)						
				lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.599996746, 0.317515969, -1.0334115, 0.965925992, 0.224143937, -0.129408777, -0.129408777, -0.0147545189, -0.991481662, -0.224143982, 0.974444509, 0.0147544444),0.4)						
				lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.800001621, -1.66354609, -0.482949197, 0.965925992, 0.24999994, 0.0669862926, -0.129410028, 0.690649629, -0.711516976, -0.224143282, 0.678604007, 0.699468791),0.4)						
				lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.699999928, -1.61176395, -0.676161468, 0.965925992, -0.249999821, -0.0669860095, 0.0669879913, 0.491480291, -0.868308663, 0.249999315, 0.834234655, 0.491480589),0.4)
			end
			local b2 = Instance.new("Part")
			b2.Size = Vector3.new(1,1,1)
			b2.BrickColor = BrickColor.new("Lily white")
			b2.CanCollide = false
			b2.Parent = targ
			b2.Material = "Neon"
			b2.Anchored = true
			local mesh = Instance.new("SpecialMesh")
			mesh.MeshType = "Sphere"
			mesh.Parent = b2
			b2.CFrame = CFrame.new(targ:FindFirstChild("Head").Position)
			local rn = 0.5
			TweenMe(mesh,"Scale",Vector3.new(100,100,100),rn,'Linear',"Out")
			TweenMe(b2,"Transparency",1,rn,'Linear',"Out")
			game.Debris:AddItem(b2,rn)
				bp:Remove()
				local c = Instance.new("BodyVelocity")
				c.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				c.Velocity = Vector3.new(0,-90,0)
				c.Parent = targ.Torso
				game.Debris:AddItem(c,0.2)
				local c = Instance.new("BodyAngularVelocity")
				c.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
				c.AngularVelocity = Vector3.new(10,10,10)
				c.Parent = targ.Torso
				game.Debris:AddItem(c,0.2)
			local effecto = coroutine.wrap(function()
				for i = 1,50 do wait()
					local b2 = Instance.new("Part")
					b2.Size = Vector3.new(1,1,1)
					b2.BrickColor = BrickColor.new("Really red")
					b2.CanCollide = false
					b2.Parent = workspace
					b2.Material = "Neon"
					b2.Anchored = true
					targ.Humanoid:TakeDamage(1)
					local mesh = Instance.new("SpecialMesh")
					mesh.MeshType = "Brick"
					mesh.Parent = b2
					b2.CFrame = CFrame.new(targ:FindFirstChild("Torso").Position)*CFrame.Angles(math.random(1,10),math.random(1,10),math.random(1,10))
					local rn = 0.2
					TweenMe(mesh,"Scale",Vector3.new(6,6,6),rn,'Linear',"Out")
					TweenMe(b2,"Transparency",1,rn,'Linear',"Out")
					game.Debris:AddItem(b2,rn)
				end
			end)
			effecto()
				wait(0.2)
				bp2:Remove()
				wait(0.8)
				targ.Humanoid.PlatformStand = false
				targ.Humanoid.WalkSpeed = ws2
			end
			human.WalkSpeed = ws
			AnimDisable = false
		end
		debunk = false
	end
end)
local mover = 1
mouse.Button1Down:connect(function()
if debunk == false then
clear()
if mover == 1 then
debunk = true
AnimDisable = true
for i = 1,12 do game:GetService("RunService").RenderStepped:Wait()
	dmg(larm,2.5,10,'stall')
lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0, 1.5, 0, 0.965925872, 0, 0.258818984, 0, 1, 0, -0.258818984, 0, 0.965925872),0.4)						
lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.0212036669, 0, -0.046545554, 0.965925872, 0, -0.258818984, 0, 1, 0, 0.258818984, 0, 0.965925872),0.4)						
lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-1.20263016, 0.499998093, -0.939292789, 0.965925872, 0.258818984, 0, 0, 0, -1, -0.258818984, 0.965925872, 0),0.4)						
lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.12911308, -1.37090683e-06, -0.41824472, 0.875000358, 0.433012038, 0.216506928, 0.433012992, -0.500001192, -0.749999106, -0.216504902, 0.749999821, -0.625000954),0.4)						
lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.500009656, -2, -6.64591789e-06, 0.866025567, 0, 0.49999994, 0, 1, 0, -0.49999994, 0, 0.866025567),0.4)						
lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.789773703, -2.00000167, -0.0776414648, 0.968208492, -0.249999985, 0.00851857662, 0.24999994, 0.965925872, -0.0669872612, 0.00851851702, 0.0669872835, 0.997717559),0.4)
end
AnimDisable = false
mover = mover+1
debunk = false
elseif mover == 2 then
debunk = true
AnimDisable = true
for i = 1,12 do game:GetService("RunService").RenderStepped:Wait()
	dmg(rarm,2.5,10,'stall')
lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-1.55986927e-05, 1.5, -3.49986885e-06, 0.866025805, 0, -0.500000477, 0, 1, 0, 0.500000477, 0, 0.866025805),0.4)						
lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-1.46450111e-05, -0, 5.15167994e-06, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),0.4)						
lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.853609622, 0.299994349, -0.319624007, 0.862372994, -0.353553891, -0.3623721, -0.49999994, -0.707107127, -0.499999762, -0.0794589818, 0.612372279, -0.786566973),0.4)						
lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.4535886, 0.500001907, -0.719614923, 0.866025805, -0.500000477, 0, 0, 0, -1, 0.500000477, 0.866025805, 0),0.4)						
lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.500038505, -2, -1.04904248e-05, 1.00000072, 0, 0, 0, 1, 0, 0, 0, 1.00000072),0.4)						
lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.499992818, -2, 2.08616257e-07, 0.866025805, 0, -0.500000477, 0, 1, 0, 0.500000477, 0, 0.866025805),0.4)
end
AnimDisable = false
mover = mover+1
debunk = false
elseif mover == 3 then
debunk = true
AnimDisable = true
for i = 1,12 do game:GetService("RunService").RenderStepped:Wait()
	dmg(lleg,2.5,12,'stall')
lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-6.10947609e-07, 1.49999905, 1.49011612e-07, 0.866025388, -0.129410058, 0.482963204, 3.93368254e-07, 0.965925813, 0.258819193, -0.500000417, -0.224143773, 0.836516142),0.4)						
lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-3.20374966e-06, -0.017037278, -0.120592713, 0.866025269, 4.00048179e-07, -0.500000358, -0.129410043, 0.965925813, -0.224143773, 0.482963175, 0.258819193, 0.836516142),0.4)						
lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.850477576, 1.37090683e-06, -0.374998033, 0.962764382, -0.268069685, -0.0349858999, -0.193144679, -0.591506481, -0.782825291, 0.189157248, 0.760433316, -0.621257424),0.4)						
lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.888922989, 0.0473687723, -0.558426738, 0.723784626, 0.578728914, -0.375778079, 0.120739192, -0.642402411, -0.756796718, -0.679380774, 0.50238657, -0.534836054),0.4)						
lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.991633654, -1.22818995, -0.851525187, 0.814705074, 0.482963204, -0.320940524, -0.482962757, 0.258819193, -0.83651644, -0.320941091, 0.836516142, 0.444114506),0.4)						
lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(0.741478324, -1.87058878, 0.418262035, 0.991481781, -0.129410058, -0.014754504, 0.129409999, 0.965925813, 0.224143818, -0.0147547126, -0.224143773, 0.974444628),0.4)
end
AnimDisable = false
mover = mover+1
debunk = false
elseif mover == 4 then
debunk = true
AnimDisable = true
for i = 1,12 do game:GetService("RunService").RenderStepped:Wait()
	dmg(rleg,2.5,15,'stall')
lerpz(N,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-1.16527081e-05, 1.50000095, -8.77678394e-06, 0.695339978, 0.170430541, -0.698180676, 0.00425913371, 0.970480382, 0.241142526, 0.718668759, -0.170649722, 0.674087822),0.4)						
lerpz(RJ,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.0665109754, -0.117038026, -0.175001636, 0.711516261, 0.0669867843, 0.699469447, 0.129410043, 0.965925813, -0.224143639, -0.690650225, 0.250000179, 0.678603172),0.4)						
lerpz(LS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.714412808, -0.081813693, -0.791300058, 0.638530135, -0.769537687, 0.00955450535, -0.466407061, -0.396820962, -0.790567815, 0.612163484, 0.50034523, -0.612299919),0.4)						
lerpz(RS,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.07309628, -0.0401881933, -0.419679761, 0.633816302, 0.510186613, 0.581366479, 0.766589165, -0.514467299, -0.384271383, 0.103043891, 0.689226925, -0.717181265),0.4)						
lerpz(LH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(-0.500011802, -1.99999762, -5.7965517e-06, 0.854067504, 0.155384257, -0.496412039, -0.04992624, 0.97442174, 0.219111189, 0.51776129, -0.162351727, 0.839979768),0.4)						
lerpz(RH,'C0',cf(0,0,0)*ang(rd(0),rd(0),rd(0))*cf(1.50439417, -1.21903253, -0.739097595, 0.675755739, -0.735634863, 0.0468647145, 0.338456988, 0.253171057, -0.906284332, 0.6548298, 0.628288448, 0.420062542),0.4)
end
AnimDisable = false
mover = 1
debunk = false
end
end
end)