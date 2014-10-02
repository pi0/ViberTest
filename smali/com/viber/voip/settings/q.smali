.class public Lcom/viber/voip/settings/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/settings/l;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/settings/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/viber/voip/settings/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/settings/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/viber/voip/settings/PreferencesContentProvider;->a(Landroid/content/Context;)Lcom/viber/voip/settings/h;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/settings/l;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unmplemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/viber/voip/settings/l;
    .locals 2
    .parameter

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unmplemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;F)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;F)V

    .line 31
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;I)V

    .line 36
    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;J)V

    .line 41
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;Z)V

    .line 26
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcom/viber/voip/settings/l;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/viber/voip/settings/l;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unmplemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/viber/voip/settings/m;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unmplemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unmplemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/viber/voip/settings/m;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unmplemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/settings/q;->b:Lcom/viber/voip/settings/h;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
