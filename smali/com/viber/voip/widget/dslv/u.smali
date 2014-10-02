.class Lcom/viber/voip/widget/dslv/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:F

.field protected b:J

.field final synthetic c:Lcom/viber/voip/widget/dslv/DragSortListView;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;FI)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    .line 1160
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/u;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    iput p2, p0, Lcom/viber/voip/widget/dslv/u;->d:F

    .line 1162
    int-to-float v0, p3

    iput v0, p0, Lcom/viber/voip/widget/dslv/u;->a:F

    .line 1163
    iget v0, p0, Lcom/viber/voip/widget/dslv/u;->d:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/viber/voip/widget/dslv/u;->d:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/u;->h:F

    iput v0, p0, Lcom/viber/voip/widget/dslv/u;->e:F

    .line 1164
    iget v0, p0, Lcom/viber/voip/widget/dslv/u;->d:F

    iget v1, p0, Lcom/viber/voip/widget/dslv/u;->d:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/widget/dslv/u;->f:F

    .line 1165
    iget v0, p0, Lcom/viber/voip/widget/dslv/u;->d:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/u;->g:F

    .line 1166
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 1169
    iget v0, p0, Lcom/viber/voip/widget/dslv/u;->d:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1170
    iget v0, p0, Lcom/viber/voip/widget/dslv/u;->e:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 1174
    :goto_0
    return v0

    .line 1171
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/dslv/u;->d:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1172
    iget v0, p0, Lcom/viber/voip/widget/dslv/u;->f:F

    iget v1, p0, Lcom/viber/voip/widget/dslv/u;->g:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1174
    :cond_1
    iget v0, p0, Lcom/viber/voip/widget/dslv/u;->h:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 1191
    return-void
.end method

.method public a(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1195
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1199
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/widget/dslv/u;->b:J

    .line 1180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/u;->i:Z

    .line 1181
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/u;->a()V

    .line 1182
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/u;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1183
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/u;->i:Z

    .line 1187
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 1203
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/u;->i:Z

    if-eqz v0, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/widget/dslv/u;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/widget/dslv/u;->a:F

    div-float/2addr v0, v1

    .line 1209
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_1

    .line 1210
    invoke-virtual {p0, v4, v4}, Lcom/viber/voip/widget/dslv/u;->a(FF)V

    .line 1211
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/u;->b()V

    goto :goto_0

    .line 1213
    :cond_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/u;->a(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/widget/dslv/u;->a(FF)V

    .line 1214
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/u;->c:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
