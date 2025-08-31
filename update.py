
import shutil
from pathlib import Path
import json
import re


# Custom wand version - increment this if players should be asked to update their wands
version = 5


# Copy SpellCrafter into this datapack
path_source = Path('../SpellCrafter/datapack/data/spellcrafter')
path_target = Path('data/spellcrafter')

shutil.rmtree(path_target, ignore_errors=True)
shutil.copytree(path_source, path_target, dirs_exist_ok=True)


# Update custom wand version
path = path_target / 'function/load.mcfunction'
text = path.read_text(encoding='utf-8')
text = re.sub(r'(scoreboard players set #version spellcrafter\.options) \d+', rf'\1 {version}', text)
path.write_text(text, encoding="utf-8")

path = Path('data/scarena/loot_table/initial_wand.json')
loot_table = json.loads(path.read_text(encoding='utf-8'))
loot_table['functions'][-1]['tag'] = re.sub(r'(version:)\s*\d+', rf'\1 {version}', loot_table['functions'][-1]['tag'])
path.write_text(json.dumps(loot_table, indent=4, ensure_ascii=False), encoding='utf-8')
