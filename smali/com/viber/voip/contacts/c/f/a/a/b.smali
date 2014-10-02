.class Lcom/viber/voip/contacts/c/f/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/fl;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/h;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/a/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->c:Lcom/viber/voip/contacts/c/f/a/a/a;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

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

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 129
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    :cond_1
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 136
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->c:Lcom/viber/voip/contacts/c/f/a/a/a;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-static {v1, v2, v0, v3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/lang/String;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 141
    :cond_2
    :goto_0
    return-void

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->c:Lcom/viber/voip/contacts/c/f/a/a/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/b;->b:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;ZLcom/viber/voip/contacts/c/f/a/a/h;I)V

    goto :goto_0
.end method
