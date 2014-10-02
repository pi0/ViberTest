.class Lcom/viber/voip/contacts/c/f/b/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/b/ab;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/b/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/u;Lcom/viber/voip/contacts/c/f/b/ab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/z;->b:Lcom/viber/voip/contacts/c/f/b/u;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/z;->a:Lcom/viber/voip/contacts/c/f/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 580
    .line 581
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 584
    :cond_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 585
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/z;->a:Lcom/viber/voip/contacts/c/f/b/ab;

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/z;->a:Lcom/viber/voip/contacts/c/f/b/ab;

    invoke-interface {v1, v0}, Lcom/viber/voip/contacts/c/f/b/ab;->a(I)V

    .line 588
    :cond_1
    return-void
.end method
