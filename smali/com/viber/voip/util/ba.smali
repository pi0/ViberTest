.class public Lcom/viber/voip/util/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/content/DialogInterface$OnClickListener;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/ba;->a:Ljava/util/List;

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/util/ba;->b:I

    .line 311
    iput-object p1, p0, Lcom/viber/voip/util/ba;->d:Landroid/app/Activity;

    .line 312
    return-void
.end method


# virtual methods
.method public a(Landroid/app/AlertDialog$Builder;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/viber/voip/util/ba;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/viber/voip/util/ba;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 321
    iget-object v0, p0, Lcom/viber/voip/util/ba;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/viber/voip/util/ba;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 323
    iget-object v1, p0, Lcom/viber/voip/util/ba;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 324
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 326
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 330
    iget v0, p0, Lcom/viber/voip/util/ba;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/util/ba;->b:I

    .line 331
    iget v0, p0, Lcom/viber/voip/util/ba;->b:I

    iget-object v1, p0, Lcom/viber/voip/util/ba;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/viber/voip/util/ba;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/viber/voip/util/ba;->a:Ljava/util/List;

    iget v1, p0, Lcom/viber/voip/util/ba;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 334
    iget-object v1, p0, Lcom/viber/voip/util/ba;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 335
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 340
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/viber/voip/util/at;->b(Landroid/content/DialogInterface;)V

    .line 341
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/ba;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
