.class final Lcom/viber/voip/util/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/util/az;

.field final synthetic e:[Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/viber/voip/util/az;[Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/viber/voip/util/aw;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/voip/util/aw;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/viber/voip/util/aw;->c:I

    iput-object p4, p0, Lcom/viber/voip/util/aw;->d:Lcom/viber/voip/util/az;

    iput-object p5, p0, Lcom/viber/voip/util/aw;->e:[Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lcom/viber/voip/util/aw;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/viber/voip/util/aw;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lcom/viber/voip/util/aw;->c:I

    if-gtz v0, :cond_1

    const v0, 0x7f0c02b5

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 151
    invoke-static {p1}, Lcom/viber/voip/util/at;->b(Landroid/content/DialogInterface;)V

    .line 153
    iget-object v0, p0, Lcom/viber/voip/util/aw;->d:Lcom/viber/voip/util/az;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/util/aw;->d:Lcom/viber/voip/util/az;

    iget-object v0, p0, Lcom/viber/voip/util/aw;->e:[Landroid/widget/CheckBox;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/util/aw;->e:[Landroid/widget/CheckBox;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Lcom/viber/voip/util/az;->a(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_2
    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/viber/voip/util/aw;->c:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2
.end method
