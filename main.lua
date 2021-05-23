local pathnumber = script.Parent:FindFirstChild("PathNumber")
local cooldown = script.Parent.Parent.Parent.Settings:FindFirstChild("Cooldown")

script.Parent.Touched:Connect(function(hit)
	if pathnumber.Value == script.Parent.Parent.Parent.RandomNumber.Value  then
		if hit.Parent:FindFirstChild("Humanoid") then
			if hit.Parent.Humanoid.Health > 0 then
				script.Parent.CanCollide = true
				wait(cooldown)
				script.Parent.CanCollide = false
			end
		end
	else
		if hit.Parent:FindFirstChild("Humanoid") then
			if hit ~= nil then
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10000
			end
		end
	end
end) 