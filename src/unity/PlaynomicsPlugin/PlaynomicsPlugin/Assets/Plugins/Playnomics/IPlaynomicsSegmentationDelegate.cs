using System;
using Play.LitJson;
using System.Collections.Generic;

public interface IPlaynomicsSegmentationDelegate
{
	void OnFetchedUserSegmentIds(List<long> userSegmentsIds);
	void OnFetchedUserSegmentIdsError(string error, string description);
}

