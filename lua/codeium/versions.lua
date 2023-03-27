local nvim_version_info = vim.api.nvim_command_output("version")
local _, _, full_match = string.find(nvim_version_info, [[NVIM v(%d+.%d+.%d+[.-a-zA-Z0-9]*)]])

if not full_match then
	local version = vim.version()
	if version then
		full_match = version.major .. "." .. version.minor .. "." .. version.patch
		if version.prerelease then
			full_match = full_match .. "-unknown-prerelease"
		end
	end
end

local extension_version = "1.1.67"
local extension_stamp = "8c58ba46e4b63f2ecd3a92a0cfaadf49cf196716"

return {
	nvim = full_match,
	extension = extension_version,
	extension_stamp = extension_stamp,
}
