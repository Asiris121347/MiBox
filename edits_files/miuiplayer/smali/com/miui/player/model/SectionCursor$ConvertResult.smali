.class public Lcom/miui/player/model/SectionCursor$ConvertResult;
.super Ljava/lang/Object;
.source "SectionCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/SectionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertResult"
.end annotation


# instance fields
.field public final mColumns:[Ljava/lang/String;

.field public final mRecords:[[Ljava/lang/Object;

.field public final mSortIndex:I


# direct methods
.method public constructor <init>([[Ljava/lang/Object;[Ljava/lang/String;I)V
    .locals 0
    .parameter "records"
    .parameter "columns"
    .parameter "sortIndex"

    .prologue
    .line 347
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor$ConvertResult;->mRecords:[[Ljava/lang/Object;

    .line 349
    iput-object p2, p0, Lcom/miui/player/model/SectionCursor$ConvertResult;->mColumns:[Ljava/lang/String;

    .line 350
    iput p3, p0, Lcom/miui/player/model/SectionCursor$ConvertResult;->mSortIndex:I

    .line 351
    return-void
.end method
