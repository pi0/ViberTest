.class public Lcom/viber/voip/phone/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->c:I

    .line 24
    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->d:I

    .line 25
    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->e:I

    .line 26
    iput-boolean v0, p0, Lcom/viber/voip/phone/b/a/b;->f:Z

    .line 27
    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->g:I

    .line 30
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 34
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0552

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 39
    iget-boolean v0, p0, Lcom/viber/voip/phone/b/a/b;->f:Z

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/a/b;->f:Z

    .line 41
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->e:I

    .line 42
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->d:I

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->c:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/viber/voip/phone/b/a/b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 51
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/viber/voip/phone/b/a/b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 53
    :cond_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 57
    iget-boolean v0, p0, Lcom/viber/voip/phone/b/a/b;->f:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/viber/voip/phone/b/a/b;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/viber/voip/phone/b/a/b;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/viber/voip/phone/b/a/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/a/b;->f:Z

    .line 67
    :cond_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 71
    iget v0, p0, Lcom/viber/voip/phone/b/a/b;->g:I

    new-array v0, v0, [C

    .line 72
    const/16 v1, 0x2e

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 73
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0552

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/b;->a:Landroid/widget/TextView;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    iget v0, p0, Lcom/viber/voip/phone/b/a/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->g:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/phone/b/a/b;->g:I

    .line 78
    :cond_0
    return-void
.end method
