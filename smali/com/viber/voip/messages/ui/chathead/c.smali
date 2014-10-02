.class final Lcom/viber/voip/messages/ui/chathead/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field final i:F

.field final j:F

.field final k:F

.field final l:F

.field final m:F

.field final n:I

.field final o:I

.field final p:Landroid/graphics/Point;

.field final q:F

.field final r:F

.field final s:I

.field final t:I

.field final u:I

.field final v:I

.field final w:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x7f0a01b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->n:I

    .line 38
    const v1, 0x7f0a01cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->o:I

    .line 39
    const v1, 0x7f0a01bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    .line 40
    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    .line 41
    const v1, 0x7f0a01c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->j:F

    .line 42
    const v1, 0x7f0a01c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->k:F

    .line 43
    const v1, 0x7f0a01c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->l:F

    .line 44
    const v1, 0x7f0a01c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->m:F

    .line 45
    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->u:I

    .line 46
    const v1, 0x7f0a01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    .line 47
    new-instance v1, Landroid/graphics/Point;

    const v2, 0x7f0a01cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a01ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->p:Landroid/graphics/Point;

    .line 48
    const v1, 0x7f0a01c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->c:I

    .line 49
    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->d:I

    .line 50
    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->e:I

    .line 51
    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->f:I

    .line 52
    const v1, 0x7f0a01c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->g:I

    .line 53
    const v1, 0x7f0a01ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->h:I

    .line 54
    const v1, 0x7f0a01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->v:I

    .line 55
    const v1, 0x7f0a01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    .line 56
    const v1, 0x7f0a01d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->r:F

    .line 57
    const v1, 0x7f0a01d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->s:I

    .line 58
    const v1, 0x7f0a01d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    .line 59
    const v1, 0x7f0a01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    .line 60
    return-void
.end method
