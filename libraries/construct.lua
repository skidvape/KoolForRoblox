--[[

    CE helper
    Games Supported: Killstreak

    by @stav

]]

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