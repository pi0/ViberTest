.class Lcom/viber/voip/widget/dslv/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/io/File;

.field final synthetic c:Lcom/viber/voip/widget/dslv/DragSortListView;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2993
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    .line 2988
    iput v1, p0, Lcom/viber/voip/widget/dslv/m;->d:I

    .line 2989
    iput v1, p0, Lcom/viber/voip/widget/dslv/m;->e:I

    .line 2991
    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/m;->f:Z

    .line 2994
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2995
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "dslv_state.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/m;->b:Ljava/io/File;

    .line 2997
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2999
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 3000
    const-string/jumbo v0, "mobeta"

    const-string/jumbo v1, "file created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 3001
    :catch_0
    move-exception v0

    .line 3002
    const-string/jumbo v1, "mobeta"

    const-string/jumbo v2, "Could not create dslv_state.txt"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    const-string/jumbo v1, "mobeta"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/widget/dslv/m;->e:I

    .line 3012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/m;->f:Z

    .line 3013
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3016
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/m;->f:Z

    if-nez v0, :cond_1

    .line 3067
    :cond_0
    :goto_0
    return-void

    .line 3020
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<DSLVState>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildCount()I

    move-result v2

    .line 3022
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 3023
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Positions>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3024
    :goto_1
    if-ge v0, v2, :cond_2

    .line 3025
    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    add-int v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3027
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Positions>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3029
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Tops>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3030
    :goto_2
    if-ge v0, v2, :cond_3

    .line 3031
    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v5, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3033
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Tops>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Bottoms>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3035
    :goto_3
    if-ge v0, v2, :cond_4

    .line 3036
    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v5, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3038
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Bottoms>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->l(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FirstExpPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->l(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(Lcom/viber/voip/widget/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v6, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->l(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(Lcom/viber/voip/widget/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FirstExpBlankHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->m(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SecondExpPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3045
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->m(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(Lcom/viber/voip/widget/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v6, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->m(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(Lcom/viber/voip/widget/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SecondExpBlankHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcPos>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->h(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SrcPos>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->j(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</SrcHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ViewHeight>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</ViewHeight>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3052
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <LastY>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->x(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</LastY>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FloatY>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->r(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "</FloatY>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ShuffleEdges>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3055
    :goto_4
    if-ge v0, v2, :cond_5

    .line 3056
    iget-object v4, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    add-int v6, v3, v0

    iget-object v7, p0, Lcom/viber/voip/widget/dslv/m;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v7, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Lcom/viber/voip/widget/dslv/DragSortListView;II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3058
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</ShuffleEdges>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</DSLVState>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3061
    iget v0, p0, Lcom/viber/voip/widget/dslv/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/widget/dslv/m;->d:I

    .line 3063
    iget v0, p0, Lcom/viber/voip/widget/dslv/m;->d:I

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 3064
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/m;->c()V

    .line 3065
    iput v1, p0, Lcom/viber/voip/widget/dslv/m;->d:I

    goto/16 :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3070
    iget-boolean v1, p0, Lcom/viber/voip/widget/dslv/m;->f:Z

    if-nez v1, :cond_0

    .line 3092
    :goto_0
    return-void

    .line 3076
    :cond_0
    const/4 v1, 0x1

    .line 3077
    :try_start_0
    iget v2, p0, Lcom/viber/voip/widget/dslv/m;->e:I

    if-nez v2, :cond_1

    .line 3080
    :goto_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/m;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3082
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3083
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3085
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 3086
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 3088
    iget v0, p0, Lcom/viber/voip/widget/dslv/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/widget/dslv/m;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3089
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 3095
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/m;->f:Z

    if-eqz v0, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/m;->c()V

    .line 3098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/m;->f:Z

    .line 3100
    :cond_0
    return-void
.end method
