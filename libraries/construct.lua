--[[

    CE helper
    Games Supported: Killstreak, Bridge Duel

    by @stav

]]

local cloneref = cloneref or function(obj)
    return obj
end
local replicatedStorage = cloneref(game:GetService('ReplicatedStorage'))
local httpService = cloneref(game:GetService('HttpService'))
local playersService = cloneref(game:GetService('Players'))
local lplr = playersService.LocalPlayer

local function downloadFile(path, func)
	if not isfile(path) then
		local suc, res = pcall(function()
			return game:HttpGet('https://raw.githubusercontent.com/skidvape/KoolForRoblox/'..readfile('newvape/profiles/commit.txt')..'/'..select(1, path:gsub('newvape/', '')), true)
		end)
		if not suc or res == '404: Not Found' then
			error(res)
		end
		if path:find('.lua') then
			res = '--This watermark is used to delete the file if its cached, remove it to make the file persist after vape updates.\n'..res
		end
		writefile(path, res)
	end
	return (func or readfile)(path)
end

if shared.place == 'ks' then
	return {
		GetKits = function(_)
			return {
				Basic = {
					Rarity = 'Common',
					UnlockType = 'Souls',
					Price = 0,
					Layout = 0,
					Description = {
						ShortText = 'Starter Kit without any perks.',
						Abilities = {}
					},
					Cooldowns = {},
					Cycle = 0
				},
				Tank = {
					Rarity = 'Common',
					UnlockType = 'Souls',
					Price = 150,
					Layout = 1,
					Description = {
						ShortText = 'Use a shield to block damage and knockback and permanent +10% Health! 25% slower walk speed.',
						Abilities = {
							Shield = 'Blocks 100% knockback and reduces damage by half. Cannot attack while shielding.'
						}
					},
					Cooldowns = {
						Shield = 0
					},
					Cycle = 0
				},
				Runner = {
					Rarity = 'Common',
					UnlockType = 'Souls',
					Price = 150,
					Layout = 2,
					Description = {
						ShortText = '50% increased walk speed and jump height.',
						Abilities = {
							Teleport = 'Instantly teleport to any Player in a 6 Block Radius. Cooldown: 20s'
						}
					},
					Cooldowns = {
						Teleport = 20
					},
					Cycle = 0
				},
				Healer = {
					Rarity = 'Rare',
					UnlockType = 'Souls',
					Price = 500,
					Layout = 3,
					Description = {
						ShortText = 'Use powerful heal Ability. Deals 10% less Damage and slower Attack Speed.',
						Abilities = {
							Heal = 'Grants back 22 Health. Cooldown: 12s'
						}
					},
					Cooldowns = {
						Heal = 12
					},
					Cycle = 0
				},
				Lucky = {
					Rarity = 'Rare',
					UnlockType = 'Souls',
					Price = 500,
					Layout = 4,
					Description = {
						ShortText = 'Chance for additional Rewards every Kill [Souls, Additional Levels, Mastery XP]. Has 10% less Health',
						Abilities = {
							Roll = '85% Chance to heal 30 Health, 15% Chance to set Health to 1. Cooldown: 14s'
						}
					},
					Cooldowns = {
						Roll = 14
					},
					Cycle = 0
				},
				Berserk = {
					Rarity = 'Rare',
					UnlockType = 'Souls',
					Price = 750,
					Layout = 5,
					Description = {
						ShortText = 'Equip 2 weapons at once for increased hit-speed. Has 15% less Health',
						Abilities = {
							Thorns = 'Reflect 25% of Damage for 4 Seconds! Cooldown: 20s'
						}
					},
					Cooldowns = {
						Thorns = 20
					},
					Cycle = 0
				},
				Scout = {
					Rarity = 'Rare',
					UnlockType = 'Souls',
					Price = 750,
					Layout = 6,
					Description = {
						ShortText = 'Wield powerful Knockback Sticks and walk 25% faster. Deals 0 Damage and has less hit-speed.',
						Abilities = {
							Dash = 'Dash 5 Blocks infront of you! Cooldown: 8s'
						}
					},
					Cooldowns = {
						Dash = 8
					},
					Cycle = 0
				},
				Bolt = {
					Rarity = 'Epic',
					UnlockType = 'Souls',
					Price = 2000,
					Layout = 7,
					Description = {
						ShortText = 'Electrify enemies with stunning lightning attacks. Slower attack speed.',
						Abilities = {
							Lightning = 'Start a chain Lightning attack damaging nearby enemies! Cooldown: 20s',
							Shock = 'Stun enemies in a 4 Block radius! Cooldown: 10s'
						}
					},
					Cooldowns = {
						Lightning = 20,
						Shock = 10
					},
					Cycle = 0
				},
				Runehunter = {
					Rarity = 'Epic',
					UnlockType = 'Souls',
					Price = 2000,
					Layout = 8,
					Description = {
						ShortText = '5% chance to inflict Burn, Blindness or Electroshock to Enemies on hit + 3 Abilities!',
						Abilities = {
							['\240\159\148\165 Rune'] = 'Shoot a fire Rune on an enemy to make him burn. Cooldown: 20s',
							['\240\159\145\129\239\184\143 Rune'] = 'Shoot Blindness Rune on enemy to block his Vision. Cooldown: 30s',
							['\226\154\161 Rune'] = 'Shoot Electro Rune on enemy to stun him. Cooldown: 25s'
						}
					},
					Cooldowns = {
						['\240\159\148\165 Rune'] = 20,
						['\226\154\161 Rune'] = 25,
						['\240\159\145\129\239\184\143 Rune'] = 30
					},
					Cycle = 6
				},
				Spearman = {
					Rarity = 'Legendary',
					UnlockType = 'Robux',
					Price = 299,
					PurchaseID = 250128126,
					Description = {
						ShortText = 'Use spears for increased reach. Attack enemies from a distance. Block Enemy Attacks with your Shield!',
						Abilities = {
							Shield = 'Blocks 100% knockback and reduces damage by half. Cannot attack while shielding.',
							Repulse = 'Deal Knockback when taking damage to keep enemies at a distance for 5 seconds! Cooldown: 20s'
						}
					},
					Cooldowns = {
						Shield = 0,
						Repulse = 20
					},
					Cycle = 0
				},
				Inferno = {
					Rarity = 'Legendary',
					UnlockType = 'Robux',
					Price = 299,
					PurchaseID = 250127960,
					Description = {
						ShortText = 'Use burning weapons to light enemies on fire. Deal additional Fire damage. Careful SUPER HOT!!',
						Abilities = {
							['Fire Burst'] = 'Light all Enemies around you on fire in a 3 Block radius. Cooldown: 9s'
						}
					},
					Cooldowns = {
						['Fire Burst'] = 9
					},
					Cycle = 0
				},
				Assassin = {
					Rarity = 'Legendary',
					UnlockType = 'Robux',
					Price = 299,
					PurchaseID = 250127816,
					Description = {
						ShortText = 'Become invisible using Shadow Abilities! Wield 2 Daggers for faster HitSpeed, Higher Crit Chance and +25% WalkSpeed!',
						Abilities = {
							Shadow = 'Turn invisible only leaving a small trail of smoke. Cooldown: 14s',
							Shockwave = 'Deal Knockback to all Enemies in 3 Block radius. Cooldown: 9s'
						}
					},
					Cooldowns = {
						Shadow = 14,
						Shockwave = 9
					},
					Cycle = 0
				},
				Valkyrie = {
					Rarity = 'Legendary',
					UnlockType = 'Robux',
					Price = 299,
					PurchaseID = 250128648,
					Description = {
						ShortText = 'Use Heavenly Abilities such as the TORNADO to destroy everyone in PvP. 2x Health regeneration!',
						Abilities = {
							Tornado = 'Spin like a Tornado and hit every Player around you! Cooldown: 9s',
							Blessing = 'Give 10 Health and OP Shield for 1.25 seconds blocking 100% Damage and Knockback! Cooldown: 35s'
						}
					},
					Cooldowns = {
						Tornado = 9,
						Blessing = 35
					},
					Cycle = 0
				},
				Champion = {
					Rarity = 'Legendary',
					UnlockType = 'Robux',
					Price = 299,
					PurchaseID = 950714434,
					Description = {
						ShortText = 'Wield big Hammers instead of Swords for increased Knockback and Crit Chance! Build up Rage Combo to increase Hit Speed!',
						Abilities = {
							Smash = 'Use Earths Power to Hit and Poison all Enemies infront of you, weakening them for your next hit! Cooldown: 15s',
							Fury = 'Instantly grant yourself a Rage-Combo of 2 for insane Hitspeed! Cooldown: 35s'
						}
					},
					Cooldowns = {
						Smash = 15,
						Fury = 60
					},
					Cycle = 0
				},
				Frostwalker = {
					Rarity = 'Mythic',
					UnlockType = 'Robux',
					Price = 1299,
					PurchaseID = 648079476,
					Description = {
						ShortText = 'You can Walk on water due to it turning to Ice and double Jump. Passive: Slow enemy hit-speed by 20% when fighting you.',
						Abilities = {
							['Freeze Beam'] = 'Deal 25 damage to Enemies infront of you hit by your Beam. Cooldown: 20s',
							['Double Jump'] = 'Double jump in mid-air.'
						}
					},
					Cooldowns = {
						['Freeze Beam'] = 20
					},
					Cycle = 0
				}
			}
		end,
		GetKitAbilities = function()
			return {
				Shield = {
					UI = 'A_Blocking',
					Remote = 'Block',
					Input = 1,
					InputType = 1
				},
				Tornado = {
					UI = 'B_Tornado',
					Remote = 'Spin',
					Input = 2,
					InputType = 1
				},
				['Fire Burst'] = {
					UI = 'C_FireBurst',
					Remote = 'FireBurst',
					Input = 1,
					InputType = 1
				},
				Shadow = {
					UI = 'D_ShadowWarp',
					Remote = 'ShadowWarp',
					Input = 2,
					InputType = 1
				},
				Shockwave = {
					UI = 'E_Shockwave',
					Remote = 'Shockwave',
					Input = 1,
					InputType = 1
				},
				Heal = {
					UI = 'F_Heal',
					Remote = 'HealRemote',
					Input = 1,
					InputType = 1
				},
				TNT = {
					UI = 'G_TNT',
					Remote = 'TNTKitSpawn',
					Input = 1,
					InputType = 1
				},
				Launch = {
					UI = 'H_Launch',
					Remote = 'LaunchKit',
					Input = 2,
					InputType = 1
				},
				Illusion = {
					UI = 'I_Illusion',
					Remote = 'IllusionAbility',
					Input = 1,
					InputType = 1
				},
				Dash = {
					UI = 'J_Dash',
					Remote = 'DashAbility',
					Input = 1,
					InputType = 1
				},
				Thorns = {
					UI = 'K_Thorns',
					Remote = 'ThornsAbility',
					Input = 1,
					InputType = 1
				},
				['Freeze Beam'] = {
					UI = 'L_Beam',
					Remote = 'BeamAbility',
					Input = 1,
					InputType = 2
				},
				Teleport = {
					UI = 'M_Teleport',
					Remote = 'TeleportAbility',
					Input = 1,
					InputType = 1
				},
				Blessing = {
					UI = 'N_Blessing',
					Remote = 'BlessingAbility',
					Input = 1,
					InputType = 1
				},
				Shock = {
					UI = 'O_Shock',
					Remote = 'ShockAbility',
					Input = 1,
					InputType = 1
				},
				Lightning = {
					UI = 'P_Lightning',
					Remote = 'LightningAbility',
					Input = 2,
					InputType = 1
				},
				Flex = {
					UI = 'Q_Flex',
					Remote = 'FlexAbility',
					Input = 2,
					InputType = 1
				},
				Rush = {
					UI = 'R_Rush',
					Remote = 'RushAbility',
					Input = 1,
					InputType = 1
				},
				Fang = {
					UI = 'S_Fang',
					Remote = 'FangAbility',
					Input = 2,
					InputType = 1
				},
				Harvest = {
					UI = 'T_Harvest',
					Remote = 'HarvestAbility',
					Input = 1,
					InputType = 1
				},
				Wrath = {
					UI = 'U_Wrath',
					Remote = 'WrathAbility',
					Input = 2,
					InputType = 1
				},
				Roll = {
					UI = 'V_Slots',
					Remote = 'RollAbility',
					Input = 1,
					InputType = 1
				},
				Quake = {
					UI = 'W_Quake',
					Remote = 'QuakeAbility',
					Input = 2,
					InputType = 1
				},
				Claw = {
					UI = 'X_Claw',
					Remote = 'ClawAbility',
					Input = 1,
					InputType = 1
				},
				Repulse = {
					UI = 'Y_Repulse',
					Remote = 'RepulseAbility',
					Input = 2,
					InputType = 1
				},
				['\240\159\148\165 Rune'] = {
					UI = 'FireRune',
					Remote = 'FireRuneAbility',
					Input = 3,
					InputType = 2
				},
				['\226\154\161 Rune'] = {
					UI = 'ElectroRune',
					Remote = 'ElectroRuneAbility',
					Input = 2,
					InputType = 2
				},
				['\240\159\145\129\239\184\143 Rune'] = {
					UI = 'BlindnessRune',
					Remote = 'BlindnessRuneAbility',
					Input = 1,
					InputType = 2
				},
				Curse = {
					UI = 'Curse',
					Remote = 'CurseAbility',
					Input = 1,
					InputType = 1
				},
				['Death Mark'] = {
					UI = 'DeathMark',
					Remote = 'DeathMarkAbility',
					Input = 2,
					InputType = 1
				},
				Smash = {
					UI = 'Smash',
					Remote = 'SmashAbility',
					Input = 1,
					InputType = 2
				},
				Fury = {
					UI = 'Fury',
					Remote = 'FuryAbility',
					Input = 2,
					InputType = 1
				},
				Spark = {
					UI = 'Spark',
					Remote = 'SparkAbility',
					Input = 1,
					InputType = 1
				},
				Wings = {
					UI = 'Wings',
					Remote = 'WingsAbility',
					Input = 2,
					InputType = 1
				},
				Glacier = {
					UI = 'Glacier',
					Remote = 'GlacierAbility',
					Input = 1,
					InputType = 1
				},
				Spikes = {
					UI = 'Spikes',
					Remote = 'SpikeAbility',
					Input = 2,
					InputType = 1
				},
				Shift = {
					UI = 'Shift',
					Remote = 'ShiftAbility',
					Input = 1,
					InputType = 1
				},
				Frenzy = {
					UI = 'Frenzy',
					Remote = 'FrenzyAbility',
					Input = 2,
					InputType = 1
				}
			}
		end
	}
else
	local sounds = {'rbxassetid://111007032707310', 'rbxassetid://81851569676153', 'rbxassetid://108304966836429'}
	local animations = {
		Sword = 'rbxassetid://81023102192808',
		Hammer = 'rbxassetid://113992130601874',
		Blocks = 'rbxassetid://76360831574790',
		Pickaxe = 'rbxassetid://81023102192808',
		GoldApple = 'rbxassetid://80789347313662',
		Potion = 'rbxassetid://80789347313662'
	}
	local DAMAGE = {
		WoodenSword = 15,
		Sword = 15,
		GoldSword = 35,
		DiamondSword = 45,
		Hammer = 25
	}

	local bd = {
		Blink = loadstring(downloadFile('newvape/libraries/blink.lua'))(),
		BreakTimes = {
			Bed = 0.3,
			Clay = 1.8,
			WoodPlanks = 3,
			Stone = 5,
			Bricks = 8,
			Iron = 13,
			Diamond = 25,
			TNT = 999
		},
		CombatService = {
			KnockBackApplied = replicatedStorage.Modules.Knit.Services.CombatService.RE:FindFirstChild('KnockBackApplied')
		},
		CombatConstants = {
			REACH_IN_STUDS = replicatedStorage.Constants.Melee.Reach
		},
		Entity = {
			FindByPlayer = function(plr)
				for _, v in replicatedStorage.Modules.Knit.Services.EntityService.RF.GetEntities:InvokeServer() do
					if v.Player == plr then
						return v
					end
				end

				return nil
			end,
			FindByCharacter = function(char)
				for _, v in replicatedStorage.Modules.Knit.Services.EntityService.RF.GetEntities:InvokeServer() do
					if v.Character == char then
						return v
					end
				end

				return nil
			end
		},
		EffectsController = {
			PlaySound = function(self, pos)
				local Part = Instance.new('Part')
				Part.Size = Vector3.new(0.5, 0.5, 0.5)
				Part.CanCollide = false
				Part.CanTouch = false
				Part.CanQuery = false
				Part.Transparency = 1
				Part.Position = pos
				Part.Parent = workspace

				local Sound = Instance.new('Sound')
				Sound.SoundId = sounds[math.random(1, #sounds)]
				Sound.Parent = Part
				
				Sound:Play()
				Sound.Ended:Connect(function()
					Part:Destroy()
				end)
			end
		},
		MatchController = {
			EnterQueue = function(self, mode)
				return replicatedStorage.Modules.Knit.Services.MatchService.RF.EnterQueue:InvokeServer(mode)
			end
		},
		ServerData = {
			Submode = httpService:JSONDecode(replicatedStorage.Modules.ServerData.Cache.Value)
		},
		ToolService = {
			ToggleBlockSword = function(self, tog, tool)
				return replicatedStorage.Modules.Knit.Services.ToolService.RF.ToggleBlockSword:InvokeServer(tog, tool)
			end,
			AttackPlayerWithSword = function(self, character, crit, tool)
				return replicatedStorage.Modules.Knit.Services.ToolService.RF.AttackPlayerWithSword:InvokeServer(character, crit, tool)
			end,
			PlaceBlock = function(self, blockpos)
				return replicatedStorage.Modules.Knit.Services.ToolService.RF.PlaceBlock:InvokeServer(blockpos)
			end
		},
		ViewmodelController = {
			GetContainer = function(self)
				return workspace.CurrentCamera
			end,
			PlayAnimation = function(self, tool)
				local toolnme
				if not self:GetContainer():FindFirstChild('Viewmodel') then return end

				local animObj = self:GetContainer().Viewmodel:WaitForChild(tool, 10)
				if not animObj then return end

				local anim = animObj.Animation

				if tool:find('Sword') then
					toolnme = 'Sword'
				elseif tool:find('Pickaxe') then
					toolnme = 'Pickaxe'
				elseif tool:find('Potion') then
					toolnme = 'Potion'
				else
					toolnme = tool
				end
				anim.AnimationId = animations[toolnme]

				local track = animObj.AnimationController.Animator:LoadAnimation(anim)
				track.Name = 'ToolAnimation'

				for _, v in animObj.AnimationController.Animator:GetPlayingAnimationTracks() do
					if v.Name == 'ToolAnimation' and (tool:find('Sword') or tool:find('Pickaxe')) then
						v.TimePosition = 0
						v:Stop()
						v:Destroy()
					end
				end

				track:Play()

				return track
			end,
			ToggleLoopedAnimation = function(self, tool, tog)
				if self:GetContainer():FindFirstChild('Viewmodel') then
					if self:GetContainer().Viewmodel:FindFirstChild(tool) then
						local mainpart = self:GetContainer().Viewmodel[tool].Handle.MainPart
						local motor6D = self:GetContainer().Viewmodel[tool].Handle.Motor6D

						if DAMAGE[tool] then
							self.SwordBlocked = tog
							if tog then
								mainpart.C1 = CFrame.new(-1.2, -0.5, 0) * CFrame.fromOrientation(-0.7853981633974483, 2.2689280275926285, -1.0471975511965976)
								if tool ~= 'Hammer' then
									self:GetContainer().Viewmodel[tool].MainPart.Mesh.Scale = Vector3.new(2.8, 5, 0.3)
								end
							else
								mainpart.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromOrientation(0, -3.141592653589793, 0)
								if tool ~= 'Hammer' then
									self:GetContainer().Viewmodel[tool].MainPart.Mesh.Scale = Vector3.new(2, 5, 0.3)
								end
							end
						elseif tool == 'DefaultBow' then
							if tog then
								motor6D.C0 = CFrame.new(2.7, -1.6, -4) * CFrame.fromOrientation(0.20943951023931956, -0.08726646259971647, -0.03490658503988659)
							else
								motor6D.C0 = CFrame.new(3.5, -2.9, -3.8) * CFrame.fromOrientation(0.29670597283903605, 0, 0)
							end
						end
					end
				else
					return
				end
			end
		}
	}

	bd.Entity.LocalEntity = bd.Entity.FindByPlayer(lplr)
	return bd
end