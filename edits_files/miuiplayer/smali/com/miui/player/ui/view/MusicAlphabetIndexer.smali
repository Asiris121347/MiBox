.class public Lcom/miui/player/ui/view/MusicAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "MusicAlphabetIndexer.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 16
    return-void
.end method

.method public static getAlphaBet(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 7
    .parameter "cursor"
    .parameter "indexBy"

    .prologue
    .line 34
    const-string v0, ""

    .line 36
    .local v0, EMPTY:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 37
    const-string v6, ""

    .line 56
    :goto_0
    return-object v6

    .line 40
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 42
    .local v3, pos:I
    const/4 v2, 0x0

    .line 44
    .local v2, lastChar:C
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_2

    .line 45
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, str:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 47
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 48
    .local v1, c:C
    if-eq v2, v1, :cond_1

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    move v2, v1

    .line 44
    .end local v1           #c:C
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 55
    .end local v5           #str:Ljava/lang/String;
    :cond_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 20
    invoke-static {p1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, wordKey:Ljava/lang/String;
    invoke-static {p2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, letterKey:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 26
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
