.class public Lcom/viber/voip/contacts/c/f/a/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/ae;->a:Ljava/lang/String;

    .line 309
    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/ae;->d:Ljava/lang/String;

    .line 310
    if-eqz p4, :cond_2

    :goto_2
    iput-object p4, p0, Lcom/viber/voip/contacts/c/f/a/a/ae;->b:Ljava/lang/String;

    .line 311
    if-eqz p5, :cond_3

    :goto_3
    iput-object p5, p0, Lcom/viber/voip/contacts/c/f/a/a/ae;->c:Ljava/lang/String;

    .line 312
    iput p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ae;->e:I

    .line 313
    return-void

    .line 308
    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0

    .line 309
    :cond_1
    const-string/jumbo p3, ""

    goto :goto_1

    .line 310
    :cond_2
    const-string/jumbo p4, ""

    goto :goto_2

    .line 311
    :cond_3
    const-string/jumbo p5, ""

    goto :goto_3
.end method
