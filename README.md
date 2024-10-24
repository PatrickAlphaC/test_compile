# Setup

This `README.md` assumes proficiency with the [uv](https://docs.astral.sh/uv/) tool. But, feel free to use your python dependency manager of choice (`pip`, `poetry`, `rye`, etc)

```bash
uv venv
soure .venv/bin/activate
# This next line should install vyper & snekmate, if not, install them with `uv add vyper` and `uv add snekmate`
uv sync 
```

## To see the fail

This will pass

```bash 
vyper basic_token.vy
```

This will fail

```bash
zkvyper basic_token.vy
```