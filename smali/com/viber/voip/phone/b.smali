.class Lcom/viber/voip/phone/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/CallCard;

.field private b:I

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/CallCard;Landroid/widget/TextView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/viber/voip/phone/b;->a:Lcom/viber/voip/phone/CallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/phone/b;->b:I

    .line 69
    iput-object p2, p0, Lcom/viber/voip/phone/b;->c:Landroid/widget/TextView;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/viber/voip/phone/b;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    iget-object v1, p0, Lcom/viber/voip/phone/b;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 73
    invoke-virtual {p1}, Lcom/viber/voip/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0552

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/viber/voip/phone/b;->c:Landroid/widget/TextView;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/b;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/viber/voip/phone/b;->b:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    iget v0, p0, Lcom/viber/voip/phone/b;->b:I

    new-array v0, v0, [C

    .line 80
    const/16 v1, 0x2e

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 81
    iget-object v1, p0, Lcom/viber/voip/phone/b;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/viber/voip/phone/b;->a:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v3}, Lcom/viber/voip/phone/CallCard;->getResources()Landroid/content/res/Resources;

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

    .line 82
    iget-object v0, p0, Lcom/viber/voip/phone/b;->c:Landroid/widget/TextView;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    iget v0, p0, Lcom/viber/voip/phone/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/phone/b;->b:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/phone/b;->b:I

    .line 86
    :cond_0
    return-void
.end method
