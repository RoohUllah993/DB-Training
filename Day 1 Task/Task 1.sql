SELECT
	REVERSE(
		SUBSTRING(
			REVERSE(FilePath),
			CHARINDEX('.',
			REVERSE(FilePath), 0),
			CHARINDEX('\',
			REVERSE(FilePath), 0) - CHARINDEX('.', REVERSE(FilePath), 0)
			)
		), *
from dbo.filepaths