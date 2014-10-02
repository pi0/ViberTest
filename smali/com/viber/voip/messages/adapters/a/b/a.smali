.class public Lcom/viber/voip/messages/adapters/a/b/a;
.super Lcom/viber/voip/ui/b/a/a;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private final c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private final g:Landroid/graphics/drawable/Drawable;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Landroid/content/res/ColorStateList;

.field private final q:Landroid/content/res/ColorStateList;

.field private final r:Landroid/content/res/ColorStateList;

.field private final s:Landroid/content/res/ColorStateList;

.field private final t:Landroid/content/res/ColorStateList;

.field private final u:Landroid/content/res/ColorStateList;

.field private final v:I

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:I

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 20
    const/high16 v0, 0x41f0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    .line 21
    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/viber/voip/messages/adapters/a/b/a;->b:I

    return-void

    :cond_0
    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a/a;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/viber/voip/messages/adapters/a/b/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    .line 53
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->h:Z

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->i:Z

    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->j:Z

    .line 56
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->d:I

    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0458

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->e:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02033e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->f:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->g:Landroid/graphics/drawable/Drawable;

    .line 60
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->k:I

    .line 61
    const v0, 0x7f0200cf

    iput v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->l:I

    .line 62
    const v0, 0x7f0200cc

    iput v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->m:I

    .line 63
    const v0, 0x7f0200d3

    iput v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->n:I

    .line 64
    const v0, 0x7f0200cd

    iput v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->o:I

    .line 65
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->p:Landroid/content/res/ColorStateList;

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->q:Landroid/content/res/ColorStateList;

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->r:Landroid/content/res/ColorStateList;

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->s:Landroid/content/res/ColorStateList;

    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->t:Landroid/content/res/ColorStateList;

    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->u:Landroid/content/res/ColorStateList;

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->v:I

    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c053c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->w:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c04a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->x:Ljava/lang/String;

    .line 74
    const/high16 v0, 0x42a0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->y:I

    .line 76
    iput-boolean p3, p0, Lcom/viber/voip/messages/adapters/a/b/a;->z:Z

    .line 77
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private a(Z)I
    .locals 1
    .parameter

    .prologue
    .line 112
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->n:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->o:I

    goto :goto_0
.end method

.method private c(ZZ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->k:I

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->l:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->m:I

    goto :goto_0
.end method


# virtual methods
.method public a(ZZ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/b/a;->c(ZZ)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/adapters/a/b/a;->a(Z)I

    move-result v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->i:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->d:I

    return v0
.end method

.method public b(ZZ)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->p:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->q:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->v:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->t()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/a/b/a;->z:Z

    return v0
.end method
