.class public Lcom/viber/error/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Lcom/viber/error/a;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/viber/error/a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/viber/error/a;->b:Lcom/viber/error/a;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/viber/error/a;

    invoke-direct {v0}, Lcom/viber/error/a;-><init>()V

    sput-object v0, Lcom/viber/error/a;->b:Lcom/viber/error/a;

    .line 23
    :cond_0
    sget-object v0, Lcom/viber/error/a;->b:Lcom/viber/error/a;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/viber/voip/util/fx;->a(Landroid/content/Context;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    const/16 v0, -0x7b

    if-eq v0, p2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "crashed here (native trace should follow after the Java trace)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 50
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/viber/error/a;->c()Lcom/viber/error/report/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/error/report/d;->a(Ljava/lang/String;)V

    .line 56
    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/viber/error/a;->a(I)V

    .line 57
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/error/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 29
    invoke-static {}, Lcom/viber/error/report/d;->a()Lcom/viber/error/report/d;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/error/report/d;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public c()Lcom/viber/error/report/d;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/viber/error/report/d;->a()Lcom/viber/error/report/d;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {}, Lcom/viber/error/report/d;->a()Lcom/viber/error/report/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/error/report/d;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 36
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/viber/error/a;->a(I)V

    .line 37
    iget-object v0, p0, Lcom/viber/error/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
