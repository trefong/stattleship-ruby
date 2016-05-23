# Changelog

## 0.1.21

### Added

Added `season_id` and `interval_type` parameter support for:

* `StatLeadersParams`
* `TopStatsParams`
* `TotalPlayerStatParams`

So that their sport flavors can call the API for specific seasons and intervals, such as
the 2015 MLB regular season vs the 2015 preseason.

---