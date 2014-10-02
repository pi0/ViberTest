.class Lcom/viber/voip/contacts/c/d/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/ar;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/ar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/ai;->b:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/ai;->a:Lcom/viber/voip/contacts/c/d/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 571
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 572
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 575
    :cond_0
    invoke-interface {p3, v3, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 576
    iget-object v2, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v2, v2, v3

    invoke-static {v2}, Lcom/viber/voip/contacts/a/c;->a(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    :cond_1
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 580
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/ai;->a:Lcom/viber/voip/contacts/c/d/ar;

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/ai;->a:Lcom/viber/voip/contacts/c/d/ar;

    invoke-interface {v1, v0}, Lcom/viber/voip/contacts/c/d/ar;->a(Ljava/util/Set;)V

    .line 583
    :cond_2
    return-void
.end method
