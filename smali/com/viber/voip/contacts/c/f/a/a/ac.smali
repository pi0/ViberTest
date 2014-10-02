.class Lcom/viber/voip/contacts/c/f/a/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/ak;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/ab;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/ab;Lcom/viber/voip/contacts/c/f/a/a/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ac;->b:Lcom/viber/voip/contacts/c/f/a/a/ab;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/ac;->a:Lcom/viber/voip/contacts/c/f/a/a/ak;

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
    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 118
    :cond_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 119
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/ac;->a:Lcom/viber/voip/contacts/c/f/a/a/ak;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/ac;->a:Lcom/viber/voip/contacts/c/f/a/a/ak;

    invoke-interface {v1, v0}, Lcom/viber/voip/contacts/c/f/a/a/ak;->a(I)V

    .line 120
    :cond_1
    return-void
.end method
