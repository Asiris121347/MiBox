.class public Lcom/miui/player/ui/TrackPickerForPlaylist;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "TrackPickerForPlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;


# instance fields
.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mCommitAdd:Landroid/widget/TextView;

.field private mCursor:Landroid/database/Cursor;

.field private mPlaylistId:J

.field private mSelectAll:Landroid/widget/TextView;

.field private mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

.field private mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-direct {v0}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;-><init>()V

    sput-object v0, Lcom/miui/player/ui/TrackPickerForPlaylist;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaLoaderInfo()Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 180
    const-string v1, "title != \'\'"

    invoke-static {p0, v1}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, where:Ljava/lang/String;
    new-instance v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->TRACK_PICKER_COLUMNS:[Ljava/lang/String;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v0, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    new-instance v6, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$TrackConverterForPicker;

    invoke-direct {v6}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$TrackConverterForPicker;-><init>()V

    .line 184
    .local v6, converter:Lcom/miui/player/model/SectionCursor$CursorConverter;
    new-instance v7, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;

    const/4 v1, 0x0

    invoke-direct {v7, v6, v1}, Lcom/miui/player/ui/base/TemplateListActivity$SectionCursorDecorator;-><init>(Lcom/miui/player/model/SectionCursor$CursorConverter;I)V

    .line 186
    .local v7, decorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    new-instance v1, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    invoke-direct {v1, v7, v0}, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;-><init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V

    return-object v1
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 3
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 192
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 197
    .local v0, first:Z
    :goto_1
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1, p2}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 198
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 203
    if-eqz v0, :cond_2

    .line 204
    sget-object v1, Lcom/miui/player/ui/TrackPickerForPlaylist;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->restoreListPosition(Landroid/widget/ListView;)V

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->updateBottomView()V

    goto :goto_0

    .line 196
    .end local v0           #first:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public needBindToService()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->isSelectAll()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->selectAll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->updateBottomView()V

    .line 113
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->notifyDataSetChanged()V

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->clearSelectAudioList()V

    .line 109
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "playlist_id"

    iget-wide v2, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mPlaylistId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 117
    const-string v1, "track_ids"

    iget-object v2, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getSelectAudioList()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 118
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mPlaylistId:J

    .line 46
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 49
    .local v10, lv:Landroid/widget/ListView;
    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 51
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/player/ui/view/AlphabetFastIndexer;

    .line 52
    .local v9, fi:Lcom/miui/player/ui/view/AlphabetFastIndexer;
    invoke-virtual {v9, v10}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->attatch(Landroid/widget/AbsListView;)V

    .line 53
    invoke-virtual {v9, v6}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 55
    new-instance v0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f03003d

    iget-wide v4, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mPlaylistId:J

    new-array v7, v12, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v7, v11

    new-array v8, v12, [I

    const v2, 0x1020014

    aput v2, v8, v11

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/TrackPickerForPlaylist;IJLandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v9}, Lcom/miui/player/ui/view/AlphabetFastIndexer;->getIndexerIntrinsicWidth()I

    move-result v1

    invoke-static {v10, v0, v11, v1, v11}, Lcom/miui/player/ui/UIHelper;->addLayoutMargins(Landroid/view/View;IIII)Z

    .line 73
    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mBottomLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mBottomLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    const v1, 0x7f0800b7

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCommitAdd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    .line 83
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0, v12}, Lcom/miui/player/ui/controller/TitleBarController;->setVisible(Z)V

    .line 84
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setNavigatorRes(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setStyle(I)V

    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTitleBar:Lcom/miui/player/ui/controller/TitleBarController;

    const v1, 0x7f0800ad

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/TitleBarController;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    sget-object v0, Lcom/miui/player/ui/TrackPickerForPlaylist;->sListViewPositionWrap:Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;

    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;->saveListPosition(Landroid/widget/ListView;)V

    .line 128
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 134
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/TrackPickerForPlaylist;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iput-object v2, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    .line 136
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 137
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 91
    const v1, 0x7f0c0096

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 92
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v1, p4, p5}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->toggle(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->updateBottomView()V

    .line 97
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/miui/player/ui/base/TemplateListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 98
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mCursor:Landroid/database/Cursor;

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBottomView()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 154
    iget-object v6, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v6}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getSelectedSize()I

    move-result v1

    .line 155
    .local v1, count:I
    iget-object v6, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v6}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getMaxSelectableCount()I

    move-result v3

    .line 156
    .local v3, maxSeletable:I
    const v6, 0x7f0800b7

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/TrackPickerForPlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, formatCount:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mBottomLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0c002a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, addCommit:Landroid/widget/TextView;
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v2, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    if-ne v1, v3, :cond_2

    .line 163
    iget-object v4, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v6, 0x7f080004

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 168
    :goto_1
    iget-object v4, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/TrackPickerForPlaylistAdapter;

    invoke-virtual {v4}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->isSelectAll()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    if-nez v3, :cond_0

    .line 170
    iget-object v4, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    :cond_0
    return-void

    :cond_1
    move v4, v5

    .line 159
    goto :goto_0

    .line 165
    :cond_2
    iget-object v4, p0, Lcom/miui/player/ui/TrackPickerForPlaylist;->mSelectAll:Landroid/widget/TextView;

    const v6, 0x7f080003

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
